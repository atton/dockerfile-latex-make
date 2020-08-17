FROM atton/alpine-texlive-ja

RUN apk add --no-cache make && tlmgr install tracklang

ADD make.sh /root/make.sh
ENTRYPOINT ["sh", "/root/make.sh"]
