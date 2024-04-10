import onnx

input_path = "work_dir/yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea.onnx"
output_path = "work_dir/yolo_world_v2_s_obj365v1_goldg_pretrain-55b943ea-sub.onnx"
input_names = ["images"]
output_names = [
    "/baseModel/head_module/reg_preds.0/reg_preds.0.2/Conv_output_0",
    "/baseModel/head_module/reg_preds.1/reg_preds.1.2/Conv_output_0",
    "/baseModel/head_module/reg_preds.2/reg_preds.2.2/Conv_output_0",

    "/baseModel/head_module/cls_contrasts.0/MatMul_output_0",
    "/baseModel/head_module/cls_contrasts.1/MatMul_output_0",
    "/baseModel/head_module/cls_contrasts.2/MatMul_output_0",
]

onnx.utils.extract_model(input_path, output_path, input_names, output_names)
