# Use the slim variant of Python 3.9.16.
FROM python:3.9.16-slim
# Set container's working directory.
WORKDIR /app_home
# Copy requirements and install dependencies.
COPY . .
RUN pip install -r requirements_app.txt
# Expose port 8000 for the application.
EXPOSE 8000
# Run Uvicorn when the container starts.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]