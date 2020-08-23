# pull official base image
FROM python:3.8.1-slim-buster

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install system dependencies
RUN apt-get update && apt-get install -y netcat vim nano wget git 

# install dependencies
RUN pip install --upgrade pip 
ADD ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

# install aws cli
RUN pip install awscli
EXPOSE 5000
# copy project
#ADD . /usr/src/app/

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
