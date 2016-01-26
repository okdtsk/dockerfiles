FROM mysql:5.7

MAINTAINER Tasuku OKUDA <okdtsk@gmail.com>

ENV AZKABAN_VERSION_MAJOR 3.0
ENV AZKABAN_VERSION_MINOR 0
ENV AZKABAN_VERSION ${AZKABAN_VERSION_MAJOR}.${AZKABAN_VERSION_MINOR}

ADD ["azkaban-sql-${AZKABAN_VERSION}.tar.gz", "/src"]
RUN cp /src/azkaban-sql-${AZKABAN_VERSION}/create-all-sql-${AZKABAN_VERSION}.sql /docker-entrypoint-initdb.d/01.sql && \
    cp /src/azkaban-sql-${AZKABAN_VERSION}/update.active_executing_flows.${AZKABAN_VERSION_MAJOR}.sql /docker-entrypoint-initdb.d/02.sql && \
    cp /src/azkaban-sql-${AZKABAN_VERSION}/update.execution_flows.${AZKABAN_VERSION_MAJOR}.sql /docker-entrypoint-initdb.d/03.sql

CMD ["mysqld"]
