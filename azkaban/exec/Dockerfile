FROM java:8

MAINTAINER Tasuku OKUDA <okdtsk@gmail.com>

ENV AZKABAN_VERSION_MAJOR 3.0
ENV AZKABAN_VERSION_MINOR 0
ENV AZKABAN_VERSION ${AZKABAN_VERSION_MAJOR}.${AZKABAN_VERSION_MINOR}

ADD ["azkaban-exec-server-${AZKABAN_VERSION}.tar.gz", "/src"]
COPY ["azkaban-exec-start-fg.sh", "/src"]
RUN mv /src/azkaban-exec-server-${AZKABAN_VERSION} /src/azkaban-exec-server && \
    mv /src/azkaban-exec-start-fg.sh /src/azkaban-exec-server/bin && \
    chmod +x /src/azkaban-exec-server/bin/azkaban-exec-start-fg.sh && \
    mkdir /src/azkaban-exec-server/logs

RUN ln -sf /dev/stdout /src/azkaban-exec-server/logs/azkaban-execserver.log

VOLUME ["/src/azkaban-exec-server/conf"]
EXPOSE 12321

WORKDIR /src/azkaban-exec-server
CMD ["/src/azkaban-exec-server/bin/azkaban-exec-start-fg.sh"]
