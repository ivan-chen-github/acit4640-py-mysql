FROM python

RUN apt-get update && apt-get install -y \
    wait-for-it

COPY init.sh .

CMD ["bash", "init.sh"]
