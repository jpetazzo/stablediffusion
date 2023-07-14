FROM python:3.9
RUN apt-get update && apt-get install libgl1 -y
WORKDIR /app
COPY requirements.txt .
RUN --mount=type=cache,target=/root/.cache \
    pip install -r requirements.txt
COPY . .
RUN --mount=type=cache,target=/root/.cache \
    pip install -e . 
RUN --mount=type=cache,target=/root/.cache \
    pip install xformers
