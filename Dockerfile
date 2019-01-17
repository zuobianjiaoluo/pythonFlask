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
