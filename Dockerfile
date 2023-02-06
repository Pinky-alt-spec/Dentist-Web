FROM python:3.10-bullseye


RUN mkdir /app
#CREATE FOLDER FOR FILES 
WORKDIR /app
COPY . /app

# RUN COMMANDS
RUN ["pip", "install", "--upgrade", "pip"] 

RUN ["pip", "install", "-r", "requirements.txt"]

RUN ls /app

# START PYTHON
CMD ["python", "manage.py" ,"runserver", "0.0.0.0:80"]
