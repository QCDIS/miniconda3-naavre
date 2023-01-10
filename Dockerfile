FROM continuumio/miniconda3 AS build

COPY environment.yml .
RUN mamba env create -f environment.yml