#!/usr/bin/env bash
# Copyleft

# Define environment variables
MINICONDA=~/miniconda3/etc/profile.d/conda.sh
MINICONDA_ENV=cva6
# To activate this environment, use
#
#     $ conda activate ibex
#
# To deactivate an active environment, use
#
#     $ conda deactivate

# Get the root directory of the Git repository
export ROOT_DIR=$(git rev-parse --show-toplevel)

export BENDER=~/eth/bin/bender
export PULP_RISCV_GCC_TOOLCHAIN=$ROOT_DIR/install/riscv
export GCC_TOOLCHAIN=$ROOT_DIR/install/riscv/bin
export CC=gcc-10
export CXX=g++-10


source $MINICONDA
conda activate $MINICONDA_ENV

export PATH=~/eth/bin:~/verible/bin:$ROOT_DIR/install/verilator/bin:$PATH
source ~/vivado.sh
export CV_SIMULATOR=verilator
export CV_SW_TOOLCHAIN=$ROOT_DIR/install/corev-openhw-gcc-ubuntu2004-20240530
export CV_SW_PREFIX=riscv32-corev-elf-
export CV_SW_MARCH=rv32imc_zicsr
export RISCV=$ROOT_DIR/tools/corev-openhw-gcc
