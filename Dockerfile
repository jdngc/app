FROM python:3
WORKDIR /app
COPY . .
CMD ["python3", "hello.py"]

