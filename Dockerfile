#use a base image
FROM nginx

# Copy the files to the container
COPY www /var/lib/doting/www
COPY nginx.conf /etc/nginx/nginx.conf


# Expose the port
EXPOSE 8080

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
