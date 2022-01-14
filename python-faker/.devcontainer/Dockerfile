FROM python:3.9-buster AS builder-stage

COPY ./requirements.txt .
RUN pip install --user -r requirements.txt


FROM python:3.9-slim-buster AS runner
COPY --from=builder-stage /root/.local /usr/local

