# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt requirements.txt

# Install the required dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . .

# Inform Docker that the container is listening on port 5000
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

