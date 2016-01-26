FROM golang:latest

WORKDIR /root/direnv
ARG DIRENV_VIRSION

# gox v1.5~ doesn't need this process
RUN git clone https://github.com/direnv/direnv /root/direnv && \
    git checkout refs/tags/v${DIRENV_VIRSION} && \
    sed -i '/gox -build-toolchain/d' Makefile

VOLUME ["/root/direnv/dist"]

CMD ["/bin/bash"]
