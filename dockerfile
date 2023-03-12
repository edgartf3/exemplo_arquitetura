FROM python:3.10.0-slim

RUN python -m pip install --upgrade pip
RUN pip install pipenv
USER root

WORKDIR /app

ENV PIPENV_VENV_IN_PROJECT=True

COPY . .

RUN pipenv install --system
RUN pipenv shell --fancy

EXPOSE 8000

CMD ["python","manage.py", "runserver", "0.0.0.0:8000"]