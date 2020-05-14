FROM python:3.8

RUN pip install pipenv

COPY . /app
WORKDIR /app
RUN pipenv install --deploy --system

CMD python ./src/main.py
