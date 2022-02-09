FROM python:3.8.0-slim
LABEL maintainer="akshay.deokar@persistent.com"
LABEL build_date="2022-02-03"
LABEL app_base="Python:3.8.0-slim"
WORKDIR /application

COPY requirement.txt .

RUN pip install -r requirement.txt

COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]