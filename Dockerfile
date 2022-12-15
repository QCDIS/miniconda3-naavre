FROM continuumio/miniconda3 AS build

COPY environment.yml .
RUN conda env update -f environment.yml
