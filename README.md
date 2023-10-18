# origami_nvme
This project is a port of [fpgadeveloper/fpga-drive-aximm-pcie](https://github.com/fpgadeveloper/fpga-drive-aximm-pcie) for XCKU060 Origami board.  
Only stand-alone applications running on Microblaze have been ported.

## Requirements
- Ubuntu 22.04 (probably works on Windows)
- Xilinx Vivado/Vitis 2022.1
- Build license of Kintex Ultrascale series

## Build the project
1. Open a command terminal and launch the setup script for Vivado and Vitis:
   ```
   source <path-to-xilinx-tool-install>/Vivado/2022.1/settings64.sh
   source <path-to-xilinx-tool-install>/Vitis/2022.1/settings64.sh
   ```
   e.g.)
   ```
   source /tools/Xilinx/Vivado/2022.1/settings64.sh
   source /tools/Xilinx/Vitis/2022.1/settings64.sh
   ```
3. `cd` into the `Vivado` folder of the project directory:
   ```
   cd origami_nvme/Vivado
   ```
4. Launch Vivado in batch mode to start the build:
   ```
   vivado -mode batch -source build.tcl
   ```
   After the build is complete, `fpgadrv_wrapper.xsa` is generated in the current directory.
5. `cd` into the `Vitis` folder of the project directory:
   ```
   cd ../Vitis
   ```
6. Launch XSCT to start the build:
   ```
   xsct build.tcl
   ```

## Prepare the hardware
1. Install the SSD in the SSD1 slot of the FPGADrive and insert it into the FMC connector on the Origami board.
2. Connect the Origami board to the PC with two USB cables.
3. Turn on the Origami board.
4. Open a serial terminal at 9600 baud for USB-UART using `gtkterm` or `screen`.

## Run the application
1. Connect the Origami board to the PC with two USB cables.
2. Launch Vitis and set workspace to `<path-to-this-project>/Vitis/workspace`.
3. Close welcome tab.
4. Press Menu Bar->`Xilinx`->`Program Device`, then press `Program` to write the bitstream to the device.
5. With `pcie_enum_system` selected from `Explorer` tab, press `Run`.
6. After a few moments, a log will appear on the serial terminal.
