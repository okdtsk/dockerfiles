FROM java:8

MAINTAINER Tasuku OKUDA <okdtsk@gmail.com>

ENV AZKABAN_VERSION_MAJOR 3.0
ENV AZKABAN_VERSION_MINOR 0
ENV AZKABAN_VERSION ${AZKABAN_VERSION_MAJOR}.${AZKABAN_VERSION_MINOR}

ADD ["azkaban-web-server-${AZKABAN_VERSION}.tar.gz", "/src"]
COPY ["azkaban-web-start-fg.sh", "/src"]
RUN mv /src/azkaban-web-server-${AZKABAN_VERSION} /src/azkaban-web-server && \
    mv /src/azkaban-web-start-fg.sh /src/azkaban-web-server/bin && \
    chmod +x /src/azkaban-web-server/bin/azkaban-web-start-fg.sh && \
    mkdir /src/azkaban-web-server/logs

RUN ln -sf /dev/stdout /src/azkaban-web-server/logs/azkaban-access.log && \
    ln -sf /dev/stderr /src/azkaban-web-server/logs/azkaban-webserver.log

VOLUME ["/src/azkaban-web-server/conf"]
EXPOSE 8081

WORKDIR /src/azkaban-web-server
CMD ["/src/azkaban-web-server/bin/azkaban-web-start-fg.sh"]
