FROM python:3
# RUN apt-get update && apt-get -y update
# RUN apt-get install -y build-essential python3.6 python3-pip python3-dev
# RUN pip3 -q install pip --upgrade
COPY  . .
RUN pip3 install -r requirements.txt
RUN pip3 install jupyter
COPY ./data ./notebooks/data
WORKDIR /notebooks
# Add Tini. Tini operates as a process subreaper for jupyter. This prevents kernel crashes.
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["jupyter", "notebook", "--port=3333", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
