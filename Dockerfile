FROM centos:latest
MAINTAINER avinashguptaaugust30@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD 
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd" , "-D", "FOREGROUND"]
EXPOSE 60
