# wget https://huggingface.co/wondervictor/YOLO-World/resolve/main/yolo_world_s_clip_base_dual_vlpan_2e-3adamw_32xb16_100e_o365_goldg_train_pretrained-18bea4d2.pth

if [ ! -f "yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea.pth" ]; then
    wget https://huggingface.co/wondervictor/YOLO-World/resolve/main/yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea.pth
else
    echo "yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea.pth already exists"
fi