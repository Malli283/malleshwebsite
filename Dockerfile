FROM ubuntu

# Update package lists and install Apache
RUN apt update && apt install apache2 -y

# Copy the content from the host machine to the container's web directory
COPY ./var/www/html/ /var/www/html/

# Set the entrypoint to run Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

