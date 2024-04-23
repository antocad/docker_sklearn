FROM continuumio/miniconda3
WORKDIR /usr/src/app
COPY ./ ./

# Setting up the conda environment
RUN conda env create -f conda.yaml
ENV PATH /opt/conda/envs/dockerimg/bin:$PATH
ENV CONDA_DEFAULT_ENV dockerimg
RUN /bin/bash -c "source activate dockerimg"
RUN echo "source activate dockerimg" > ~/.bashrc
