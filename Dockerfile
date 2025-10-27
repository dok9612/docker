# Use an official Python base image (lightweight version)
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your code into the container
COPY poom.py .

# Install pandas (if your poom.py uses it; remove this line if not needed)
RUN pip install pandas

# Command to run when the container starts
CMD ["python", "poom.py"]