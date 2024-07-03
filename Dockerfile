# Use the official Alpine image
FROM alpine:latest

# Install httpd (Apache)
RUN apk update && apk add --no-cache apache2

# Copy the static website files to the container
COPY index.html /var/www/localhost/htdocs/

# Expose port 80
EXPOSE 80

# Start httpd (Apache) in the foreground
CMD ["httpd", "-D", "FOREGROUND"]

