#!/bin/bash
###
###
#SBATCH --time=00:10:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --partition=bsudfq
#SBATCH --job-name=poisson
#SBATCH --output=poisson.o%j

#module load gcc mpich slurm


./poisson 100

