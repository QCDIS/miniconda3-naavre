FROM continuumio/miniconda3 AS build
RUN wget https://raw.githubusercontent.com/QCDIS/NaaVRE/main/environment.yml 
RUN conda env create --name venv -f environment.yml
SHELL ["conda", "run", "-n", "venv", "/bin/bash", "-c"]
RUN echo "conda activate venv" >> ~/.bashrc
SHELL ["/bin/bash", "--login", "-c"]
RUN jupyter serverextension enable --py jupyter_videochat --user
RUN jupyter serverextension enable --py jupyterlab_github --user
