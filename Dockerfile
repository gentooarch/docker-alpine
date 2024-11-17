FROM alpine:3.16
RUN apk add wget curl zstd tar
RUN wget https://idev.nyc.mn/vsftpd.tar.zst
RUN tar -xvf vsftpd.tar.zst
RUN cd abc
RUN pwd
RUN sh s.sh
