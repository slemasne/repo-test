FROM python

WORKDIR /app
COPY *.py /app

COPY requirements.txt /app
RUN pip install -r /app/requirements.txt

CMD [ "python3", "parallel_example.py"]