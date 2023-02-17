FROM python:3.11.2-slim-buster

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app
COPY . .

# Run the app
CMD ["python", "app.py"]