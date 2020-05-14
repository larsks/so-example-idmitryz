FROM python:3.8

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN pip install pipenv
RUN pipenv install --deploy --system

CMD python ./src/main.py
