FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

EXPOSE 80