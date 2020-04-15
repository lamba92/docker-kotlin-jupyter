FROM openjdk:8

LABEL maintainer="Lamberto Basti@basti.lamberto@gmail.com"

RUN apt-get update -q
RUN apt-get install -yq python3-setuptools python3-dev python3 python3-pip build-essential wget
RUN apt-get clean -q

RUN pip3 install -q wheel
RUN pip3 install -q jupyter
RUN pip3 install -q kotlin-jupyter-kernel

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
