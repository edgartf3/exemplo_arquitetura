FROM python:3.10.0-slim

RUN useradd -ms /bin/bash python

RUN pip install pipenv

USER python

WORKDIR /home/python/app

ENV PIPENV_VENV_IN_PROJECT=True

COPY . .

RUN pipenv install --system

EXPOSE 8000

CMD ["python","manage.py", "runserver", "0.0.0.0:8000"]