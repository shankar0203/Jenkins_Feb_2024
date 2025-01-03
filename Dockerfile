FROM almalinux:8

# Update the system and install Apache HTTP Server
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Expose port 90
EXPOSE 90

# Start Apache HTTP Server in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
