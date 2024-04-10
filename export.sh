mkdir weights
cd weights
./download.sh

python deploy/export_onnx.py \
configs/pretrain/yolo_world_v2_s_vlpan_bn_2e-3_100e_4x8gpus_obj365v1_goldg_train_lvis_minival.py \
weights/yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea.pth \
--custom-text data/texts/coco_class_texts.json --device cpu --simplify