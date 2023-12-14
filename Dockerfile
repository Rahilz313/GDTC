FROM ubuntu:latest

# Install Python
RUN apt-get update && \
    apt-get install -y \
    python3

# Copy the index.html file
COPY index.html /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Python HTTP server
CMD python3 -m http.server 80 --directory /var/www/html/

