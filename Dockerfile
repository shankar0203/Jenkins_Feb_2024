FROM centos:7

# Set environment variable to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache HTTP server
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Expose port 90
EXPOSE 90

# Command to run Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
