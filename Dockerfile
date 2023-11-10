# Use an official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your HTML file and JavaScript files to the Nginx document root
COPY index.html /usr/share/nginx/html/
COPY jquery-2.1.4.min.js /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
# Expose port 80 for HTTP
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]