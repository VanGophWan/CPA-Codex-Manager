FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /app/requirements.txt
RUN pip install --default-timeout=300 -r /app/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app

RUN mkdir -p /app/data /app/logs

EXPOSE 8000

CMD ["python", "webui.py", "--host", "0.0.0.0", "--port", "8000"]
