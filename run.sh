#!/bin/bash

# Bash script to run the Python training script with specified arguments

python scripts/train.py --lr 0.005 \
                        --subsetlr 0.05 \
                        --routerlr 0.0005 \
                        --sharedEmbeddinglr 0.05 \
                        --batch_size 32 \
                        --epoch 50 \
                        --max_length 256 \
                        --model_name_or_path t5-base \
                        --tokenizer_name_or_path t5-base \
                        --warmup_ratio 0.06 \
                        --method prefix-routing \
                        --dataset_name rte_superglue \
                        --num_virtual_tokens 1 \
                        --num_shared_virtual_tokens 10 \
                        --num_virtual_tokens_full 4 \
                        --perturb_router True \
                        --topk 1 \
                        --shareType Only \
                        --apply_adaptive_mask True\
                        --apply_adaptive_subset_mask True\