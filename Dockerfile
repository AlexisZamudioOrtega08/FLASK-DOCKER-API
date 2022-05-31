# 
FROM python:3.9

WORKDIR /api-project
# 
COPY ./requirements.txt /api-project/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# 
COPY ./app /api-project/app

# 
COPY .env /api-project/.env

#
ENV PYTHONPATH "${PYTHONPATH}:/api-project/app"

# 
CMD ["python", "app/app.py"]