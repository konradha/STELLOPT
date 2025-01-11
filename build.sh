#!/bin/bash
set -e
export STELLOPT_PATH=$(pwd)
export MACHINE="ubuntu"
export PIXI_PROJECT_ROOT=$(pwd)
export PATH=$PIXI_PROJECT_ROOT/.pixi/envs/default/bin:$PATH

export LD_LIBRARY_PATH=$PIXI_PROJECT_ROOT/.pixi/envs/default/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=${STELLOPT_PATH}/.pixi/envs/default/lib/pkgconfig:$PKG_CONFIG_PATH

export HDF5_INC="-I$PIXI_PROJECT_ROOT/.pixi/env/include"
export HDF5_LIB="-L$PIXI_PROJECT_ROOT/.pixi/env/lib -lhdf5"

export NETCDF_INC="-I$PIXI_PROJECT_ROOT/.pixi/env/include"
export NETCDF_LIB="-L$PIXI_PROJECT_ROOT/.pixi/env/lib -lnetcdff -lnetcdf"

export HDF5_DIR="$PIXI_PROJECT_ROOT/.pixi/env"
export NETCDF_DIR="$PIXI_PROJECT_ROOT/.pixi/env"
export NETCDF_FORTRAN_DIR="$PIXI_PROJECT_ROOT/.pixi/env"

#echo $PIXI_PROJECT_ROOT
#echo $NETCDF_LIB
#echo $HDF5_INC


# TODO: mpif90.openmpi isn't installed in pixi env
# need to symlink or fix this otherwise


#./build_all -j8 -o release
