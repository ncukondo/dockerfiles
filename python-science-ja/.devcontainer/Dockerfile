FROM python:3.9-buster AS builder-stage
RUN apt-get update

COPY ./requirements.txt .
RUN pip install --user -r requirements.txt

# add noto fonts
RUN curl -o /tmp/NotoSansCJKjp-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
  && unzip -o -d /usr/share/fonts/noto /tmp/NotoSansCJKjp-hinted.zip 



FROM python:3.9-slim-buster AS runner
COPY --from=builder-stage /root/.local /usr/local

# copy noto fonts and clear font cache
RUN mkdir -p /usr/share/fonts/noto
COPY --from=builder-stage /usr/share/fonts/noto/*.otf  /usr/share/fonts/noto/
RUN chmod 644 /usr/share/fonts/noto/*.otf
RUN apt-get update && apt-get install -y fontconfig
RUN fc-cache -fv

