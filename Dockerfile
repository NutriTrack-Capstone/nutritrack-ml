FROM tensorflow/serving:latest
COPY models /models/nutritrack
ENV MODEL_NAME=nutritrack
ENTRYPOINT ["/usr/bin/tf_serving_entrypoint.sh", "--rest_api_port=8501"]