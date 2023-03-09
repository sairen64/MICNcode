pred_l=(96 192 336 720)

for i in ${pred_l[@]}
do
    python -u run.py \
        --model micn \
        --mode regre \
        --data ETTh1 \
        --features M \
        --freq h \
        --conv_kernel 12 16 \
        --d_layers 1 \
        --d_model 512 \
        --seq_len 96 \
        --label_len 96 \
        --pred_len $i
done

for i in ${pred_l[@]}
do
    python -u run.py \
        --model micn \
        --mode regre \
        --data ETTh2 \
        --features M \
        --freq h \
        --conv_kernel 12 16 \
        --d_layers 1 \
        --d_model 512 \
        --seq_len 96 \
        --label_len 96 \
        --pred_len $i
done