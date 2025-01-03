# Use an official lightweight Linux base image
FROM ubuntu:20.04

# Set environment variables to suppress interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Apache HTTP Server
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Change Apache's listening port to 90
RUN sed -i 's/80/90/g' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# Expose port 90
EXPOSE 90

# Start the Apache HTTP Server in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
