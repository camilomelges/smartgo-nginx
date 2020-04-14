FROM nginx:stable-alpine as production-stage

COPY ./etc/nginx/conf.d/* /etc/nginx/conf.d/

COPY ./etc/nginx/nginx.conf /etc/nginx/

COPY ./usr/share/nginx/html/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]