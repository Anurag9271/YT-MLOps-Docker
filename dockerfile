# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app   
#creating a folder called app

# Copy the current directory contents into the container at /app
COPY . /app
# "." refers taking all files in the current folder "/app" Copying that in to the app folder inside docker 

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Here all the files from this folder as well as the requirements.txt also moved in to the folder 
# so, we need to pip install the dependencies thats why this run command used here

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]