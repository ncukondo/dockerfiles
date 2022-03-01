FROM pandoc/latex:latest

# from https://github.com/tttza/pandoc-latex-ja
RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
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

LABEL org.opencontainers.image.source https://github.com/ncukondo/dockerfiles/pandoc-latex-ja

WORKDIR /data