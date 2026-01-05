FROM ubuntu:22.04

WORKDIR /app
copy app.sh .
RUN chomod +x app.sh
CMD["./app.sh"]
