

FROM python:3.8

# Set working directory
WORKDIR /app

# Copy dependencies first (caching)
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . /app

# Set the default CMD for Jenkins builds
CMD ["python3", "-m", "unittest", "discover", "-s", "."]

