# Use the base image with Ubuntu 20.04
FROM ubuntu:20.04

# Set the timezone to Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime && echo Asia/Kolkata > /etc/timezone

# Update package repositories and install necessary packages
RUN apt-get update && \
    apt-get install -y \
    apache2 \
    zip \
    unzip

# Add your custom configurations or files
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip

# Expose port 80
#EXPOSE 80

# Start the Apache server (you might need to do additional configuration)
#CMD ["apachectl", "-D", "FOREGROUND"]



# FROM ubuntu:20.04

# # Update package repositories and install necessary packages
# RUN apt-get update && \
#     apt-get install -y \
#     apache2 \
#     zip \
#     unzip

# # Add your custom configurations or files
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# EXPOSE 80
# # Start the Apache server (you might need to do additional configuration)
# CMD ["apachectl", "-D", "FOREGROUND"]



# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip photogenic.zip
# RUN cp -rvf photogenic/* .
# RUN rm -rf photogenic photogenic.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80   
