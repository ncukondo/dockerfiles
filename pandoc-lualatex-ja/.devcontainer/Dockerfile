FROM pandoc/latex:2.18-ubuntu

# from https://github.com/tttza/pandoc-latex-ja
RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
RUN apt-get update && apt-get -y install curl
RUN curl -LO https://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/update-tlmgr-latest.sh
RUN bash ./update-tlmgr-latest.sh
RUN tlmgr update --self --all
RUN tlmgr update --self && tlmgr install \
    bxjscls \
    luatexja \
    collection-langjapanese \
    ctex \
    multirow \
    ltablex \
    xltabular \
    subfig \
    float \
    type1cm 

# setup japanese env
RUN apt-get update && \
    apt-get install -y language-pack-ja-base language-pack-ja locales && \
    locale-gen ja_JP.UTF-8 && \
    echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
ENV LANG=ja_JP.UTF-8

LABEL org.opencontainers.image.source https://github.com/ncukondo/dockerfiles/pandoc-lualatex-ja

# Install BIZ UD Gothic
RUN wget https://github.com/google/fonts/raw/main/ofl/bizudgothic/BIZUDGothic-Bold.ttf
RUN wget https://github.com/google/fonts/raw/main/ofl/bizudgothic/BIZUDGothic-Regular.ttf
RUN cp *.ttf /usr/share/fonts

RUN mkdir -p ~/.pandoc/csl && \
    cd ~/.pandoc/csl && \
    wget -O vancouver.csl https://www.zotero.org/styles/vancouver && \
    wget -O ama.csl https://www.zotero.org/styles/american-medical-association && \
    wget -O apa.csl https://www.zotero.org/styles/apa-6th-edition

WORKDIR /data

ENTRYPOINT [  ]