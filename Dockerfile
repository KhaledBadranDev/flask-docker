# Use an official Python runtime as a base image
FROM python:3.6.1-alpine

# install dependencies
RUN pip install --upgrade pip
RUN pip install flask

# cmd to run the application
CMD ["python", "app.py"]

# This line copies the app.py file in the local directory (where you will run docker image build) into a new layer of the image.
COPY app.py /app.py
