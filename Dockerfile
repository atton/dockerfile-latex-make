FROM atton/alpine-texlive-ja

ENV TZ Asia/Tokyo

RUN apk add --no-cache make tzdata && tlmgr install tracklang

ADD make.sh /root/make.sh
ENTRYPOINT ["sh", "/root/make.sh"]
