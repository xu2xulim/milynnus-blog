# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install mkdocs and any other dependencies
RUN pip install --no-cache-dir mkdocs-material mkdocs-rss-plugin

# Build the mkdocs site
RUN mkdocs build

# Use nginx to serve the static files
FROM nginx:alpine
COPY --from=0 /app/site /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]
