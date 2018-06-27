FROM nginx

# Add the Nginx configuration file
ADD ./nginx.conf /etc/nginx/nginx.conf

# Copy over static assets from the client application
COPY ./index.html /usr/share/nginx/html
COPY ./dist /usr/share/nginx/html