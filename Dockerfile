FROM python:latest

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./ ./src
WORKDIR /code/src

CMD [ "python", "shapes/app.py" ]
