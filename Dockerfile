# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY ./app .

# Install the required Python packages
RUN pip install --no-cache-dir flask

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the Flask app
CMD ["python", "app.py"]
