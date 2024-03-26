#!/bin/bash
export CUDA_VISIBLE_DEVICES=1
export ROOT_DIR=/mnt/Data2/nerf_datasets/nerf_synthetic/
scenes=(chair drums)

for SCENES in ${scenes[@]}
do
echo ${SCENES}
python run_nerf.py --config configs/hotdog_active.txt \
--expname active_${SCENES} \
--basedir ./logs \
--datadir ${ROOT_DIR}/${SCENES}/ \
--jsondir ./data/${SCENES} \
--i_all 500001 \
--choose_k 1

done