# Version: 0.0.1
FROM ubuntu:latest
MAINTAINER Howie "18623640293@163.com"
RUN apt-get update && apt-get install -y nginx
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN echo "Hi, I am your container!" > /usr/share/nginx/html/index.html
RUN sed -i 's/root \/var\/www\/html/root \/usr\/share\/nginx\/html/g' /etc/nginx/sites-available/default
EXPOSE 80
