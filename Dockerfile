FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt ./requirements.txt
COPY app/ .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "application.py"]
