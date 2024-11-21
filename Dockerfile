# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install dependencies
RUN pip install flask

# Copy the rest of the application code
COPY python.py .

# Expose the application port
EXPOSE 5000

# Define the command to run the application
CMD ["python", "python.py"]
