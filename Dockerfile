# Starts from the python 3.10 official docker image
FROM python:3.10

# Create a folder "app" at the root of the image
RUN mkdir /app

# Define /app as the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .


# Update pip
RUN pip install --upgrade pip

# Install dependencies from "requirements.txt"
RUN pip install -r requirements.txt

# Copy all the files in the current directory in /app
COPY fast_api/main.py app/main.py
COPY ./models/ app/models

EXPOSE 8000

# Run the app
# Set host to 0.0.0.0 to make it run on the container's network
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
