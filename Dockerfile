FROM python:3 
RUN pip3 install django
RUN pip3 install requests
ADD . /var
WORKDIR /var
EXPOSE 9000 
ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:9000"]   
