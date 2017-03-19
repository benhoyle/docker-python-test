FROM aarch64/alpine:latest

RUN apk add --update nginx && \
    mkdir -p /run/nginx/ && \
    rm /etc/nginx/conf.d/default.conf

COPY app.conf /etc/nginx/conf.d/

EXPOSE 80

#RUN rm /var/www/html/index.html && ln -s /etc/hostname /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]