set XSA_PATH ../Vivado/fpgadrv_wrapper.xsa
set WORKSPACE ./workspace
set PLATFORM_NAME origami_nvme
set APP_NAME pcie_enum

# Recursive copy function
# Note: Does not overwrite existing files, thus our modified files are untouched.
proc copy-r {{dir .} target_dir} {
  foreach i [lsort [glob -nocomplain -dir $dir *]] {
    # Get the name of the file or directory
    set name [lindex [split $i /] end]
    if {[file type $i] eq {directory}} {
      # If doesn't exist in target, then create it
      set target_subdir ${target_dir}/$name
      if {[file exists $target_subdir] == 0} {
        file mkdir $target_subdir
      }
      # Copy all files contained in this subdirectory
      eval [copy-r $i $target_subdir]
    } else {
      # Copy the file if it doesn't already exist
      if {[file exists ${target_dir}/$name] == 0} {
        file copy $i $target_dir
      }
    }
  }
} ;# RS

# Recursive find subdirectory function
# Recursively searches for subdirectories whose names are given in the arguments, and returns 
# full paths of the parent directories. Files are completely ignored.
# Example usage: glob-dir-r [pwd] src data (recursively find all directories containing "src" 
# or "data" subdirectories in current path)
proc glob-dir-r {{dir .} args} {
  set res {}
  foreach i [lsort [glob -nocomplain -dir $dir *]] {
    if {[file isdirectory $i]} {
      if {[llength $args]} {
        foreach arg $args {
          if {[file tail $i] == $arg} {
            lappend res [file dirname $i]
            return $res
          }
        }
      }
      eval [list lappend res] [eval [linsert $args 0 glob-dir-r $i]]
    }
  }
  return $res
}

# Create the local software repository (embeddedsw) for the modified drivers
proc create_local_embeddedsw {} {
  # Xilinx Vitis install directory
  set vitis_dir $::env(XILINX_VITIS)
  # Copy the EmbeddedSw folder into the Vitis workspace
  file mkdir "embeddedsw"
  copy-r "../EmbeddedSw" "embeddedsw"
  # List all of the "src" or "data" directories so that we know what to copy
  # from the Vitis installation original driver sources
  set local_dirs [glob-dir-r "embeddedsw" src data]
  set orig_dirs {}
  foreach d $local_dirs {
    if {[string index $d end] == "9"} {
      lappend orig_dirs [string replace "$vitis_dir/data/$d" end end ""]
    } else {
      lappend orig_dirs "$vitis_dir/data/$d"
    }
  }
  # Copy the relevant original sources into the local software repository
  foreach local_dir $local_dirs orig_dir $orig_dirs {
    puts "Copying files from $orig_dir to $local_dir"
    # Copy the original files to local repo, without overwriting existing code
    copy-r $orig_dir $local_dir
  }
}

if {[file exists $XSA_PATH] == 0} {
  puts "ERROR: File not found: $XSA_PATH"
  exit 1
}

# Copy original library sources into the local Vitis repo
if {[file exists "../EmbeddedSw"]} {
  puts "Building the local Vitis repo from original sources"
  create_local_embeddedsw
}

setws $WORKSPACE

repo -set "./embeddedsw"

platform create -name ${PLATFORM_NAME} -hw ${XSA_PATH}

domain create -name {standalone_domain} \
  -display-name "standalone on microblaze_0" \
  -os {standalone} \
  -proc microblaze_0 \
  -runtime {cpp} \
  -arch {32-bit} \
  -support-app {empty_application}

platform active $PLATFORM_NAME
platform write
platform generate

app create -name $APP_NAME \
           -template {Empty Application} \
           -platform ${PLATFORM_NAME} \
           -domain {standalone_domain}

file copy "./src/pcie_enumerate.c" "$WORKSPACE/$APP_NAME/src"

app build -name $APP_NAME
