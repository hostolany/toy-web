FROM nginx:1.14.0
  
WORKDIR /usr/share/nginx/html/
#ADD WebContent/* .

COPY tem/animal.tar.gz .
#RUN mv index.html index1.html
RUN tar -Uxf animal.tar.gz --strip-components=1;
