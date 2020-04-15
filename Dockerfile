FROM lamba92/openjdk8:1.0.0

LABEL maintainer="Lamberto Basti@basti.lamberto@gmail.com"

RUN apt update

RUN apt install -y -qq python3-setuptools python3-dev python3 python3-pip build-essential wget
RUN apt clean

RUN pip3 install -q wheel
RUN pip3 install -q jupyter
RUN pip3 install -q kotlin-jupyter-kernel

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
