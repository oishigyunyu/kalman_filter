#!/bin/bash
docker run \
    -itd --rm\
    --network=host \
    --device=/dev/kfd \
    --device=/dev/dri \
    --ipc=host \
    --shm-size 16G \
    --group-add video \
    --cap-add=SYS_PTRACE \
    --security-opt seccomp=unconfined \
    -v $HOME/kalman_filter:/workdir \
    yamamura/cupy-rocm:v9.0.0 /bin/bash 
