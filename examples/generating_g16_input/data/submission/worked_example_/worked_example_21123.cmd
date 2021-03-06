#!/bin/sh
#SBATCH -N 1
#SBATCH --ntasks-per-node=3
#SBATCH -t 23:59:00
#SBATCH -C haswell
mkdir -p /scratch/UserNameOnCluster/job.$$
export GAUSS_SCRDIR=/scratch/UserNameOnCluster/job.$$

g16 worked_example_21123.com

bash echo 'Job Complete' >worked_example_21123.done

rm worked_example_211.chk worked_example_212.chk worked_example_213.chk