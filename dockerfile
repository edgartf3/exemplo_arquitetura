FROM python:3.10.0-slim
WORKDIR /usr/src/app
ENV PIPENV_VENV_IN_PROJECT=True
RUN pip install pipenv
COPY . .
RUN pipenv install
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python","manage.py", "runserver", "0.0.0.0:8000"]