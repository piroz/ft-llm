FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu22.04

RUN apt-get update && \
    apt-get install -y python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install torch torchvision torchaudio

RUN pip3 install datasets transformers[ja,torch] spacy-alignments seqeval ipython pytorch-crf

WORKDIR /work

COPY ./src /work

ENTRYPOINT [ "python3", "/work/fine_tuning.py" ]
