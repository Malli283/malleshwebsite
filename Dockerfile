# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package repository and install Apache
RUN apt-get update && apt-get install -y apache2

# Copy the content from the local directory to the container
COPY ./var/www/html/ /var/www/html/

# Expose the default port for Apache
EXPOSE 80

# Set the entry point to run Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
