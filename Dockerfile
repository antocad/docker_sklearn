FROM continuumio/miniconda3
WORKDIR /usr/src/app
COPY ./ ./

# Setting up the conda environment
RUN conda env create -f conda.yaml
ENV PATH /opt/conda/envs/mainenv/bin:$PATH
ENV CONDA_DEFAULT_ENV mainenv
RUN /bin/bash -c "source activate mainenv"
RUN echo "source activate mainenv" > ~/.bashrc
