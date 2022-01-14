FROM python:3.9-buster AS builder

COPY ./requirements.txt .
RUN pip install --user -r requirements.txt


FROM python:3.9-slim-buster AS runner
COPY --from=builder /root/.local /usr/local
RUN chmod -R 777 /usr/local
