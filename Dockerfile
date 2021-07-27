# FROM 046608737331.dkr.ecr.us-west-2.amazonaws.com/fordockerdevsecops
FROM python:3.6.4-alpine3.6
COPY requirements.txt /opt/app/requirements.txt
WORKDIR /opt/app
RUN pip install -r requirements.txt
COPY dagda /opt/app
COPY ./dagda/dagda.py /
RUN chmod +x /dagda.py
ENTRYPOINT ["/bin/sh","/dagda.py"]
