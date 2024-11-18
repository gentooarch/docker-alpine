# 使用 Alpine 作为基础镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 安装必要的软件包（根据需要替换）
RUN apk add --no-cache bash curl

# 复制应用代码到容器中
COPY . .

# 设置容器启动命令
CMD ["bash"]

