FROM nginx:1.14.0
  
WORKDIR /usr/share/nginx/html/
ADD WebContent/* .

#COPY tem/animal.tar.gz .
RUN tar -Uxf animal.tar.gz
