FROM python

# COPY backend/requirements.txt /requirements.txt
COPY ./backend /backend

WORKDIR /backend

RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    wait-for-it

RUN pip install -r requirements.txt
# RUN mkdir -p /app

EXPOSE 5000

CMD ["bash", "wait-for-it.sh"]