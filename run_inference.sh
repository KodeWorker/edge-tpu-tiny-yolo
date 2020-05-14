#set -e
#CONDA_PATH=$(where anaconda)
#CONDA_SETTING_SCRIPT="${CONDA_PATH}/../../etc/profile.d/conda.sh"
#source "${CONDA_SETTING_SCRIPT}"
#conda activate tensorflow

MODEL=./models/quant_coco-tiny-v3-relu_edgetpu.tflite
ANCHORS=./cfg/tiny_yolo_anchors.txt
CLASSES=./cfg/coco.names
THRESHOLD=0.2
VIDEO=./video/JOKER.mp4
OUTPUT=./video/JOKER_yolo.mp4

python3 inference.py \
--model $MODEL \
--anchors $ANCHORS \
--classes $CLASSES \
--threshold $THRESHOLD \
--video $VIDEO \
--output $OUTPUT \
--quant \
--edge_tpu