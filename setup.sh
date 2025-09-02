module purge
module load cpe-cuda/23.09
module load gcc/10.3.0
module load cuda/11.8
module load Mamba/23.11.0-0

mkdir env-list
PYTHONNOUSERSITE=1 conda create -p ./env-list/env python=3.10.12 -y

conda deactivate
conda activate ./env-list/env/