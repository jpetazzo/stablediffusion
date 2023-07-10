#!/bin/sh
python scripts/txt2img.py \
  --ckpt checkpoints/v2-1_768-ema-pruned.ckpt \
  --config configs/stable-diffusion/v2-inference-v.yaml \
  --H 768 --W 768 \
  --prompt "a professional photograph of an astronaut riding a horse" \
  --device cuda \
  #
