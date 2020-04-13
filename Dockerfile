FROM ubuntu

LABEL maintainer="Lamberto Basti@basti.lamberto@gmail.com"

RUN apt update
RUN apt upgrade -y

# fix for https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199#23
RUN mkdir -p /usr/share/man/man1

RUN apt install openjdk-8-jdk -y
RUN apt install -y build-essential wget
RUN apt install python3 python3-pip
RUN apt install -y python3-setuptools
RUN apt install -y python3-dev
RUN apt clean

RUN pip3 install wheel
RUN pip3 install jupyter
RUN pip3 install kotlin-jupyter-kernel

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
