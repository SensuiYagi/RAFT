#!/bin/bash
mkdir -p checkpoints
python -u core/train.py --name raft-things --stage things --validation sintel --restore_ckpt checkpoints/raft-chairs.pth --gpus 0 1 --num_steps 100000 --batch_size 6 --lr 0.000125 --image_size 120 160 --wdecay 0.0001
