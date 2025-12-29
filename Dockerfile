# use python as base image (instead of ubuntu). It follows docker best practices
FROM python:3.11-slim 

WORKDIR /app 

COPY journal-starter/ .

RUN pip install -r api/requirements.txt

CMD [ "./start.sh" ]