FROM python
ADD . /code
WORKDIR /code
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r requirements.txt
RUN pip install --upgrade pip
RUN pip install opencv-python
RUN pip install ffmpeg libsm6 libxext6  -y
CMD ["python", "app.py"]

# http://10.103.6.59:8080/
# <https://10.103.6.59:8080/github-webhook/>
