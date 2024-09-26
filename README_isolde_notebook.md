# Quick setup

The following instructions will allow you to compile and run a Verilator model of the CVA6 APU (which instantiates the CVA6 core) within the CVA6 APU testbench (corev_apu/tb).

Throughout all build and simulations scripts executions, you can use the environment variable `NUM_JOBS` to set the number of concurrent jobs launched by `make`:
- if left undefined, `NUM_JOBS` will default to 1, resulting in a sequential execution
of `make` jobs;
- when setting `NUM_JOBS` to an explicit value, it is recommended not to exceed 2/3 of
the total number of virtual cores available on your system.    

1. Checkout the repository and initialize all submodules.
```sh
git clone https://github.com/openhwgroup/cva6.git
cd cva6
git submodule update --init --recursive
```

2. Install the GCC Toolchain [build prerequisites](util/toolchain-builder/README.md#Prerequisites) then [the toolchain itself](util/toolchain-builder/README.md#Getting-started).

:warning: It is **strongly recommended** to use the toolchain built with the provided scripts.

3. Install `cmake`, version 3.14 or higher.

4. Set the RISCV environment variable.
```sh
export RISCV=/path/to/toolchain/installation/directory
```

5. Install `help2man` and `device-tree-compiler` packages.

For Debian-based Linux distributions, run :

```sh
sudo apt-get install help2man device-tree-compiler
```

6. Install the riscv-dv requirements:

```sh
pip3 install -r verif/sim/dv/requirements.txt
```

7. Run these commands to install a custom Spike and Verilator (i.e. these versions must be used to simulate the CVA6) needed for tests suites.
```sh
export DV_SIMULATORS=veri-testharness,spike
bash verif/regress/smoke-tests.sh
```
8. Run a Hello World example derived from the modified smoke-tests script.
```sh
export TRACE_FAST=1 # to generate VCD wave files
bash verif/regress/hello-world.sh
```

# Logs

The logs from cva6.py are located in `./verif/sim/out_YEAR-MONTH-DAY`.

Assuming you ran the smoke-tests scripts in the previous step, here is the log directory hierarchy:

- **directed_asm_tests/**: The compiled (to .o then .bin) assembly tests
- **directed_c_tests/**: The compiled (to .o then .bin) c tests
- **spike_sim/**: Spike simulation log and trace files
- **veri_testharness_sim**: Verilator simulation log and trace files
- **iss_regr.log**: The regression test log 

The regression test log summarizes the comparison between the simulator trace and the Spike trace. Beware that a if a test fails before the comparison step, it will not appear in this log, check the output of cva6.py and the logs of the simulation instead.

# Waveform generation

Waveform generation is currently supported for Verilator (`veri-testharness`)
and VCS with full UVM testbench (`vcs-uvm`) simulation types.  It is disabled
by default to save simulation time and storage space.

To enable waveform generation for a supported simulation mode, set either
of the two shell variables that control tracing before running any of the
test scripts under `verif/regress`:
- `export TRACE_FAST=1` enables "fast" waveform generation (keep simulation
   time low at the expense of space).  This will produce VCD files when using
   Verilator, and VPD files when using Synopsys VCS with UVM testbench (`vcs-uvm`).
- `export TRACE_COMPACT=1` enables "compact" waveform generation (keep waveform
   files smaller at the expense of increased simulation time).  This will
   produce FST files when using Verilator, and FSDB files when using Synopsys
   VCS with UVM testbench (`vcs-uvm`).

To generate VCD waveforms of the `smoke-tests` regression suite using Verilator, use:
```sh
export DV_SIMULATORS=veri-testharness,spike
export TRACE_FAST=1
bash verif/regress/smoke-tests.sh
```

After each simulation run involving Verilator or VCS, the generated waveforms
will be copied  to the directory containing the log files (see above,) with
the name of the current HW configuration added to the file name right before
the file type suffix (e.g., `hello_world.cv32a65x.vcd`).

## Generating a Bitstream

To generate the FPGA bitstream (and memory configuration) yourself for the Genesys II board run:

```
make fpga
```

## Notes from technical meetings and exchange e-mails with Thales

It was decided to go with cv32a65x hardware configuration (smaller and having RV32IMCZicsr + CV-X-IF + AXI memory interface).

Important hints when running make fpga:

- Once you have run the make fpga successfully, it will generate a bitstream in corev_apu/fpga/work-fpga/ 

- It will NOT save the project that’s why it is empty. If you want to save the project, it is recommended to add save_project_as your_project_name in corev_apu/fpga/scripts/run.tcl at some point. Usually you can do it right before “synth design”.

- You can also change the corev_apu/fpga/Makefile line 2: into VIVADOFLAGS ?= -nojournal -mode gui -source scripts/prologue.tcl. It will launch the bitstream generation in GUI mode directly. I recommend this method which will setup your project the best way.

- The top file is ariane_xilinx.sv.

- Porting the CVA6 for ZCU102 should be feasible. You should look into corev_apu/fpga/constraints which contains constraints description for all the supported board. You might also look into ariane_xilinx.sv where you can find ifdef for the different boards.

Possible error when running make FPGA with the above modifications:

   [DRC INBB-3] Black Box Instances: Cell '...' has undefined contents and is considered a black box. The contents of this cell must be defined for opt_design to complete successfully. 
   [Vivado_Tcl 4-78] Error(s) found during DRC. Opt_design not run

- make fpga stops at the implementation step so it can't generate the bitstream file

- root cause of the problem is running the script with 'cv32a65x' as target configuration because it was not tested for fpga synthesys (in this case the sram wrapper module is treated as black box)

- one potential solution is using another hardware configuration that works, for exmaple: cv32a6_imac_sv32