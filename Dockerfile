# Use official lightweight Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt into the container and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Python script into the container
COPY app.py .

# Default command to run when the container starts
CMD ["python", "app.py"]
