FROM nginx:1.10.2

MAINTAINER nginx_app

ENV NGINX_VERSION 1.10.2-1~jessie

COPY conf/ /etc/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
