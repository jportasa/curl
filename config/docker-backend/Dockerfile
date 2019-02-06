FROM python:2.7

ENV APP_DIR /app

WORKDIR /app

COPY requirements.txt $APP_DIR/
RUN pip install --no-cache-dir -r requirements.txt

COPY . $APP_DIR
