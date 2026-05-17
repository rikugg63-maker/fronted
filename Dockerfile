# 使用 Apache 镜像作为基础镜像
FROM httpd:latest

# 删除 Apache 默认的静态文件
RUN rm -rf /usr/local/apache2/htdocs/*

# 将打包好的项目文件复制到 Apache 的存放目录
COPY dist/shop/ /usr/local/apache2/htdocs/