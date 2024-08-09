FROM gitpod/workspace-full

RUN sudo apt install -y nvidia-utils-550
RUN wget https://developer.download.nvidia.com/compute/cuda/12.4.0/local_installers/cuda_12.4.0_550.54.14_linux.run
RUN sudo sh cuda_12.4.0_550.54.14_linux.run --silent --toolkit
RUN rm cuda_12.4.0_550.54.14_linux.run

ENV PATH=$PATH:/usr/local/cuda-12.0/bin
ENV LD_LIBRARY_PATH=/usr/local/cuda-12.0/lib64
