FROM ubuntu:22.04

WORKDIR /app
copy app.sh .
RUN chmod +x app.sh
CMD ["./app.sh"]
