FROM debian
WORKDIR /var/www/laba.com
RUN apt-get -qq update && \
    apt-get autoclean && \
    apt-get install -y nginx && \
    rm -rf /var/www/* && \
    mkdir /var/www/laba.com && \
    mkdir /var/www/laba.com/img 

COPY index.html /var/www/laba.com

COPY img.jpg /var/www/laba.com/img

RUN chmod -R 754 /var/www/laba.com && \
    useradd ekaterina && \
    groupadd kuptsova && \
    usermod -aG kuptsova ekaterina && \
    chown -R ekaterina:kuptsova /var/www/laba.com

RUN sed -i 's/html/laba.com/g' /etc/nginx/sites-enabled/default && \
    sed -i 's/www-data/ekaterina/g' /etc/nginx/nginx.conf && \
    sed -i 's/index.htm/index.html/g' /etc/nginx/sites-enabled/default

CMD ["nginx","-g","daemon off;"]
