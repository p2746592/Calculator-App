# Use Python official base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy application files into the container
COPY calculator.py /app
COPY test_calculator.py /app

# Install any necessary dependencies (if required)
RUN pip install --no-cache-dir pytest

# Command to run unit tests and keep the container running
CMD ["python3", "-m", "unittest", "discover", "-s", "."]
