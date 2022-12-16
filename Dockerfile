FROM continuumio/miniconda3 AS build

COPY environment.yml .
RUN conda env create -f environment.yml

RUN conda list