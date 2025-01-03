FROM centos:7

# Install Apache HTTP Server
RUN yum install -y httpd

# Expose port 80
EXPOSE 80

# Start Apache HTTP Server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
