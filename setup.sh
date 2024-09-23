MINICONDA_ENV=cva6
. ~/miniconda3/etc/profile.d/conda.sh
conda create --name $MINICONDA_ENV python=3.10
conda activate $MINICONDA_ENV 
pip3 install -r verif/sim/dv/requirements.txt
. ./eth.sh