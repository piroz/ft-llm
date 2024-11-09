# ft-llm
fine tuning llm models

```
docker run --rm -v ./hf-cache:/hf-cache -v ./output:/output -e HF_HOME=/hf-cache --gpus all -it ft-llm
```
