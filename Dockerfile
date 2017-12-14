FROM nginx:1.13-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY site.template /etc/nginx/conf.d/site.template

CMD /bin/sh -c "DOLLAR=\"$\" envsubst < /etc/nginx/conf.d/site.template > /etc/nginx/conf.d/site.conf && nginx -g 'daemon off;'"
