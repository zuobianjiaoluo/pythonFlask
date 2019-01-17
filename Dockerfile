FROM    python:3.7

RUN mkdir /PythonFlaskWeb
WORKDIR /PythonFlaskWeb
COPY ./ .
RUN pip install flask
RUN pip install requests
EXPOSE 5555
CMD python runserver.py
