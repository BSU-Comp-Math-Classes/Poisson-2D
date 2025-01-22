#!/bin/bash
###
###
#SBATCH --time=01:10:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --partition=bsudfq
#SBATCH --job-name=poisson
#SBATCH --output=poisson.o%j

#module load gcc mpich slurm


./swe_2d 400 0.002 10 1.5

