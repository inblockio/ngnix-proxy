FROM nginxproxy/nginx-proxy:alpine
ENV LOG_JSON=true
ENV ENABLE_HTTP3=true
RUN { \
          echo 'underscores_in_headers on;'; \
          echo 'client_max_body_size 200m;'; \
    } > /etc/nginx/conf.d/inblock_custom.conf