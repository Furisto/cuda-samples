FROM gitpod/workspace-full

RUN sudo apt install -y nvidia-utils-550
RUN wget https://developer.download.nvidia.com/compute/cuda/12.0.1/local_installers/cuda_12.0.1_525.85.12_linux.run && \
   sudo sh cuda_12.0.1_525.85.12_linux.run --silent --toolkit

ENV PATH=$PATH:/usr/local/cuda-12.0/bin
ENV LD_LIBRARY_PATH=/usr/local/cuda-12.0/lib64
