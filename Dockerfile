FROM python:3 
RUN pip3 install django 
WORKDIR /var
RUN git clone https://github.com/manoj8928/django.git
WORKDIR /var/django
EXPOSE 9000 
ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:9000"]   
