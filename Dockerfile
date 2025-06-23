FROM python:3.10-alpine

WORKDIR /app

RUN apk add --no-cache gcc musl-dev libffi-dev openblas-dev

COPY . .

RUN pip install --upgrade pip && pip install -r requirements/backend.txt

CMD ["python", "spaceship/main.py"] 