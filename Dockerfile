# Use the official Python image as the base image
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir flask

# Expose the port the app runs on
EXPOSE 5030

# Command to run the application
CMD ["python", "app.py"]
