FROM --platform=linux/amd64 python:3.9-slim

WORKDIR /app
COPY ./requirements.txt /app/
COPY ./pytorch.py /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD ["time", "python", "pytorch.py"]
