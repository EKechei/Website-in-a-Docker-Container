FROM nginx
LABEL maintainer="Edith Cherotich <edithcherotich32@gmail.com>"
COPY ./website /website
COPY ./website.conf /etc/nginx/nginx.conf
