FROM python:3.10

EXPOSE 5000

ENV PYTHONDONTWRITEBYCODE = 1

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY . .

CMD ["python3","-m","flask","run","--host=0.0.0.0"]
