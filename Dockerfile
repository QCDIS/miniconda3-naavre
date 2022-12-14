
FROM qcdis/miniconda3-pdal

COPY laserfarm-environment.yaml .
RUN conda env update -f laserfarm-environment.yaml

RUN conda-pack -n venv -o /tmp/env.tar && \
    mkdir /venv && cd /venv && tar xf /tmp/env.tar && \
    rm /tmp/env.tar
RUN /venv/bin/conda-unpack
