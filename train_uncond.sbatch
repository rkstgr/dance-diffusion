#!/bin/bash
#SBATCH --job-name="dance_acc"
#SBATCH --cpus-per-task=5
#SBATCH --gres=gpu:1,VRAM:48GB
#SBATCH --mem=12G
#SBATCH --time=10-00:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --export=ALL
#SBATCH --chdir=/usr/stud/steiger/dev/dance-diffusion
#SBATCH --output=/storage/slurm/logs/slurm-%j.out
#SBATCH --error=/storage/slurm/logs/slurm-%j.out
module load cuda/11.7.0
srun /usr/stud/steiger/miniconda3/envs/audiogen2/bin/python train_uncond.py
