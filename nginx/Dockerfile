FROM nginx

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN echo nginx -t

EXPOSE 80