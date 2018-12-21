FROM python:3 
RUN pip3 install django 
WORKDIR /var
RUN git clone http://167.99.234.75:8081/git/root/kuberDemo.git
WORKDIR /var/kuberDemo
EXPOSE 9000 
ENTRYPOINT ["python", "manage.py","runserver","0.0.0.0:9000"]   