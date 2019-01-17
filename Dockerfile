FROM    python:3.7
RUN mkdir /app
WORKDIR /app
COPY ./ .
RUN pip3 install flask
RUN pip3 install requests
RUN pip3 install flask-sqlalchemy
RUN pip3 install flask_restful
EXPOSE 5555
CMD python runserver.py


#FROM python:3.7

#WORKDIR /app

#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt

#COPY . .

#CMD ["gunicorn", "app:app", "-c", "./runserver.py"]#