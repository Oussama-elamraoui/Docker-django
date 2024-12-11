FROM python:3.12.5-slim


ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1


WORKDIR /app

COPY ./django_app /app


RUN pip install --upgrade pip \
    && pip install poetry

COPY ./pyproject.toml ./poetry.lock /app/ 

RUN poetry config virtualenvs.create false \ 
    && poetry install --no-interaction --no-ansi

COPY ./entrypoint.sh / 
RUN chmod +x /entrypoint.sh

EXPOSE 8000

ENTRYPOINT [ "sh","/entrypoint.sh" ]
