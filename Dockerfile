FROM rendyprojects/python:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir --upgrade --requirement https://raw.githubusercontent.com/gsweq11/codeword/main/requirements.txt
CMD bash start
