# Use a base image with Docker CLI installed
FROM docker:latest

# Copy your scripts into the image
COPY ./scripts /opt/resource/

# Ensure the scripts are executable
RUN chmod +x /opt/resource/*
