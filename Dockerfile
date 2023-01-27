FROM nginx:1.14.0
  
WORKDIR /usr/share/nginx/html/
ADD WebContent/index.html index.html
