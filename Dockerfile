FROM python:3.10

ENV PYTHONUNBUFFERED 1

WORKDIR /people_spawner

COPY poetry.lock pyproject.toml ./
COPY ./api/ api/


RUN pip3 install poetry
# We are already in virtual environment by using docker image, no need to build another one.
RUN poetry config virtualenvs.create false

RUN poetry install --no-root
