FROM mirror.gcr.io/library/nginx:1.27.1-alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY . .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
