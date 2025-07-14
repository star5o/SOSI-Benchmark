FROM php:5.6-apache

# 安装必要的扩展
RUN docker-php-ext-install mysql mysqli pdo_mysql

# 启用 Apache 重写模块
RUN a2enmod rewrite

# 复制应用程序文件到容器
COPY . /var/www/html/

# 复制 PHP 配置文件
COPY php.ini /usr/local/etc/php/php.ini

# 设置工作目录
WORKDIR /var/www/html

# 设置权限
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# 暴露端口
EXPOSE 80

# 启动 Apache
CMD ["apache2-foreground"] 