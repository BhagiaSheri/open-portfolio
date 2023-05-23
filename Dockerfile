# Use a base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the static files to the container
COPY index.html .
COPY ./css/ css/
COPY ./img/ img/
COPY ./js/ js/
COPY ./lib/ lib/
COPY ./mail/ mail/
COPY ./scss/ scss/

# Expose the desired port
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]
