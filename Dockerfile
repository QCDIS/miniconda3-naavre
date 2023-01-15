FROM continuumio/miniconda3 AS build

RUN conda install mamba -n base -c conda-forge
COPY environment.yml .

RUN mamba env create -f environment.yml

RUN conda list