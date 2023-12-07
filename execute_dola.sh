#!/bin/bash


mkdir -p dataset
mkdir -p output_dir


# 检查test_tfqa_mc.json文件是否存在，如果不存在则创建
if [ ! -f "output_dir/test_tfqa_mc.json" ]; then
  touch output_dir/test_tfqa_mc.json
fi

# 执行Python命令
python tfqa_mc_eval.py --model-name huggyllama/llama-7b --early-exit-layers 16,18,20,22,24,26,28,30,32 --data-path dataset --output-path output_dir/test_tfqa_mc.json --num-gpus 1
