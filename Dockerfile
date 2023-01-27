FROM nginx:1.14.0
  
WORKDIR /usr/share/nginx/html/
#ADD WebContent/* .
COPY tem/animal.tar.gz .
RUN tar -xf animal.tar.gz --strip-components=1;
