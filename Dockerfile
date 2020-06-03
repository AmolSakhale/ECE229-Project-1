FROM python:3.8
LABEL maintainer "Meinhard Ploner <iocak@ucsd.edu>"

WORKDIR /code

COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY ./ ./

EXPOSE 8050

CMD ["python", "./application.py"]
