# 1. insert code to python:3.9.16-slim as base image

ENV PYTHONBUFFERED 1
ENV PYTHONWRITEBYTECODE 1

RUN apt-get update \
    && apt-get install -y netcat

ENV APP=/app

# 2. insert code to change the working directory to $APP

# 3. insert code to copy the requirements.txt file to $APP

# 4. insert code to install requirements from requirements.txt

# 5. insert code to copy the rest of the files into $APP

# 6. insert code to expose the port here 

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/bin/bash","/app/entrypoint.sh"]

# 7. insert code to set the run command to "python manage.py runserver 0.0.0.0:8000"

