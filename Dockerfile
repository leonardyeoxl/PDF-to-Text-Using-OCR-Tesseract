FROM python:3.6-slim

WORKDIR /app/
ADD requirements.txt .
RUN apt-get update && apt-get install -y tesseract-ocr=4.0.0-2 make=4.2.1-1.2 gcc=4:8.3.0-1 g++=4:8.3.0-1 poppler-utils=0.71.0-5
RUN pip install -r requirements.txt