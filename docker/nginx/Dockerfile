FROM aarch64/alpine:latest

RUN apk add --update nginx 

RUN rm /etc/nginx/sites-enabled/default

ADD sites-enabled/ /etc/nginx/sites-enabled

EXPOSE 80

#RUN rm /var/www/html/index.html && ln -s /etc/hostname /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]