FROM nginx

# Add the Nginx configuration file
ADD ./nginx.conf /etc/nginx/nginx.conf

# Copy over static assets from the client application
COPY . /usr/share/nginx/html