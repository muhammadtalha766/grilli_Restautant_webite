# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Nginx
RUN apt update && apt install -y nginx


# Copy website files to the container
COPY ./index.html /var/www/html/

# Expose the Nginx port
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
