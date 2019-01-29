FROM python:3-alpine

RUN mkdir -p /opt/student-exam2

COPY . /opt/student-exam2

WORKDIR /opt/student-exam2

ENV FLASK_APP=js_example

EXPOSE 5000

RUN pip install -e .

CMD ["flask", "run", "-h", "0.0.0.0"]

