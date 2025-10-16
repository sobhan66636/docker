# Use a lightweight Python image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set working directory inside the container
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r app/requirements.txt

# Expose port
EXPOSE 8000 

# Command to run the application
CMD ["python", "-m", "app.main"]
