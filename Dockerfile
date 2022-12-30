FROM ubuntu
MAINTAINER ndenelson (nde_nelson@yahoo.fr)
RUN apt-get update 
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/NelsonPetitos/demo.git  /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]


