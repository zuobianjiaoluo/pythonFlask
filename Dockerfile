FROM    python:3.7

RUN mkdir /PythonFlaskWeb
WORKDIR /PythonFlaskWeb
ADD . /PythonFlaskWeb/
RUN pip install flask
RUN pip install requests
WORKDIR ../
EXPOSE 80
CMD python runserver.py
