FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

MAINTAINER Tim Ho <timho0110@gmail.com>

ARG OPENCV_VERSION=4.1.1.26
ARG PYTORCH_VERSION=1.3

# Install some dependencies
RUN apt-get update && apt-get install -y \
		bc \
		build-essential \
		cmake \
		curl \
		g++ \
		gfortran \
		git \
		libhdf5-dev \
		libjpeg-dev \
		libopenblas-dev \
		liblapack-dev \
		libssl-dev \
		libtiff5-dev \
		nano \
		pkg-config \
		software-properties-common \
		unzip \
		vim \
		wget \
		python-dev \
		python3-dev \
		python3-pip \
		&& \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/*

# Install other useful Python packages using pip
RUN pip3 --no-cache-dir install --upgrade ipython && \
	pip3 --no-cache-dir install \
		numpy \
		Cython \
		ipykernel \
		jupyter \
		path.py \
		Pillow \
		pygments \
		six \
		sphinx \
		wheel \
		zmq

# Install PyTorch
RUN pip3 install torch==${PYTORCH_VERSION} torchvision

# Install OpenCV
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev && \
    pip3 install opencv-python==${OPENCV_VERSION}

RUN pip3 install tensorflow==1.14.0
RUN pip3 install torchsummary

RUN pip3 install jsonref scikit-learn matplotlib yacs tqdm
