FROM centos:7
# maintained by
LABEL maintainer="our divas" 

# update our OS
RUN yum -y update && yum clean all
# install apache package
RUN yum install -y httpd

# copying file to html folder
COPY index.html /var/www/html/
# port on which the container should litsen
EXPOSE 80
# run the httpd service like systemctl start httpd
ENTRYPOINT [ "/usr/sbin/httpd" ]
# run httpd service in the background
CMD [ "-D" , "FOREGROUND"]