#!/bin/bash
#SBATCH -p fas_gpu,gpu  # request a job on one of the GPU-enabled partitions.
#SBATCH -J JOB_NAME     ### CHANGE ME
#SBATCH -n 1 # Number of cores requested
#SBATCH -N 1 #ensure that all cores are on one machine
#SBATCH --gres=gpu:1 #Number of GPUs requested
#SBATCH -t 1-00:00 #runtime in D-HH:MM
#SBATCH --mem-per-cpu 8000 #memory pool for cores
#SBATCH -o %x.out   # Save STDOUT to ${SLURM_JOB_NAME}.out
#SBATCH -e %x.err   # Save STDERR to ${SLURM_JOB_NAME}.err
#SBATCH --mail-type=BEGIN,END,FAIL #alert when done
#SBATCH --mail-user=bcook@cfa.harvard.edu #Email to send to     ### CHANGE ME

# Make sure CUDA modules are loaded
module load cuda/9.0-fasrc02
# Alternatively, add the line above to your .bashrc file

# If the packages you need (ex: Conda environments) aren't loaded by default
# in your .bashrc file, make sure they are loaded here

# conda activate my_env_name


# Do your work

# run_cool_code.py
