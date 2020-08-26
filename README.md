# PDF To Text using OCR Tesseract

This repository is inspired by https://www.geeksforgeeks.org/python-reading-contents-of-pdf-using-ocr-optical-character-recognition/

## Build

Create a directory called `data` and upload pdf into the `data` directory

```sh
$ mkdir -p data
```

Build Docker Image

```sh
$ docker build -t ocr_tesseract .
```

## Run

Run Docker Container from Docker Image

```sh
$ docker run -it -v `pwd`:/app/ ocr_tesseract:latest bash
```

Run script example

```sh
root@594df0d77c5e:/app# python main.py --data_directory data/ --pdf_file <pdf_file> --output_file <output_text_file>
```