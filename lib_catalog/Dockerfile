FROM python:3.7-slim
RUN useradd -rm django
USER django
WORKDIR /usr/src/app
ENV PATH="/home/django/.local/bin:${PATH}"
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .