FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt
COPY . .
RUN --mount=type=cache,target=/root/.cache \
    pip install -e . 
RUN apt-get update && apt-get install libgl1 -y
