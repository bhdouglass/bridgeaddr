FROM golang:buster

COPY . /bridgeaddr
RUN cd /bridgeaddr && \
    make bridgeaddr && \
    cp bridgeaddr /usr/local/bin/ && \
    rm -rf /build

ENV PORT=8080
EXPOSE 8080
CMD ["/usr/local/bin/bridgeaddr"]
