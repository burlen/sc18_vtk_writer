#!/bin/bash

n=4
b=64
dt=2

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

mkdir -p ./configs
cp ${script_dir}/configs/* ./configs

echo "+ module use /usr/common/software/sensei/modulefiles"
module use /usr/common/software/sensei/modulefiles

echo "+ module load sensei/2.1.0-vtk-shared"
module load sensei/2.1.0-vtk-shared

set -x

cat ./configs/write_visit.xml

srun -n ${n} oscillator -b ${n} -t ${dt} -s ${b},${b},1 -p 0 \
    -f ./configs/write_visit.xml \
    ./configs/random_2d_${b}.osc
