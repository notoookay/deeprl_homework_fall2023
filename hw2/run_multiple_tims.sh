#!/bin/bash

for seed in $(seq 1 5); do
python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v4 -n 100 \
--exp_name pendulum_default_s${seed}_rewardtogo \
-rtg --use_baseline -rtg -na \
--batch_size 5000 \
--seed $seed
done
