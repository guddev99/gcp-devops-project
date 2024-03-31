# Base image
FROM python:3.8-slim-buster

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file from the host to the working directory in the container
COPY requirements.txt requirements.txt

# Install the Python dependencies listed in requirements.txt using pip
RUN pip3 install -r requirements.txt

# Copy the contents of the current directory in the host to the working directory in the container
COPY . .

# Define the default command to run the Flask application when the container starts
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
