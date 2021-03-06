#!/bin/bash

n=4
b=64
dt=2

echo "+ module load sensei/3.0.0-vtk-shared"
module load sensei/3.0.0-vtk-shared

set -x
mpiexec -n ${n} oscillator -b ${n} -t ${dt} -s ${b},${b},1 -g 1 -p 0 \
    -f ./configs/write_pvd.xml ./configs/random_2d_${b}.osc
