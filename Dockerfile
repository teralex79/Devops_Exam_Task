FROM python:3-alpine

RUN set -xe \
        && mkdir -p /opt/student-exam2

COPY . /opt/student-exam2

WORKDIR /opt/student-exam2

ENV FLASK_APP=js_example

EXPOSE 5000

RUN set -xe \
        && pip install -e .

CMD ["sh", "-c", "flask run -h ${HOSTNAME}"]
