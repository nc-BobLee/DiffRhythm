cd "$(dirname "$0")"
cd ../

export HF_ENDPOINT=https://hf-mirror.com
export PYTHONPATH=$PYTHONPATH:$PWD

python3 infer/infer.py \
    --lrc-path infer/example/eg_cn_full.lrc \
    --ref-prompt "folk, acoustic guitar, harmonica, touching." \
    --audio-length 130 \
    --output-dir infer/example/output \
    --chunked \
    --batch-infer-num 5
