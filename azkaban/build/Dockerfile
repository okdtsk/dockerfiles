FROM ubuntu:14.04

MAINTAINER Tasuku OKUDA <okdtsk@gmail.com>

WORKDIR /root

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java8-installer

RUN apt-get install -y curl gcc g++ git

VOLUME ["/root/.gradle", "/root"]

CMD ["/bin/bash"]
