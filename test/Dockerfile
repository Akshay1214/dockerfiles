FROM ubuntu:latest
LABEL maintainer="akshay.deokar@persistent.com"
LABEL build_date="2022-02-03"
LABEL app_base="Ubunntu"

RUN apt-get update && \ 
    apt-get install -y python3 python3-pip;

WORKDIR /app

COPY requirement.txt .

RUN pip3 install -r requirement.txt

COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]