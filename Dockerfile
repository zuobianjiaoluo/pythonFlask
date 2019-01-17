FROM    python:3.7
RUN mkdir /app
WORKDIR /app
COPY ./ .
RUN pip install flask
RUN pip install requests
EXPOSE 5555
CMD python runserver.py
