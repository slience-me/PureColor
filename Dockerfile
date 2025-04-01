# 使用官方 PHP 镜像作为基础镜像
FROM php:8.1-apache

# 安装必要的 PHP 扩展，包括 mysqli 和 pdo_mysql
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo pdo_mysql mysqli

# 启用 Apache mod_rewrite
RUN a2enmod rewrite

# 将当前目录（你的 PHP 项目）复制到容器中的 /var/www/html
COPY . /var/www/html/

# 设置工作目录
WORKDIR /var/www/html

# 设置容器运行的端口
EXPOSE 80

# 启动 Apache 服务
CMD ["apache2-foreground"]
