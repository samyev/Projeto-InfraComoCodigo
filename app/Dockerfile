# set base image (host OS)
FROM python:3.8.10-alpine

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
ADD requirements.txt /app

# install dependencies
RUN pip3 install -r requirements.txt

# copy the content of the local app directory to the working directory
ADD . /app

# command to run on container start
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]

# Exposes the port to the container docker
EXPOSE 8000
