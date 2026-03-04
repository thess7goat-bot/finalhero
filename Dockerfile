FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
# Gunicorn is safer for DigitalOcean resource limits
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
