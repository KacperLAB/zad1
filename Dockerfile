FROM scratch AS github
ADD alpine-minirootfs-3.18.0-x86_64.tar.gz /
RUN apk add git && \
    git clone https://github.com/KacperLAB/zad1_src /git

FROM scratch
LABEL org.opencontainers.image.authors="Kacper Papinski"
ADD alpine-minirootfs-3.18.0-x86_64.tar.gz /
COPY --from=github /git/. /zad1/
WORKDIR /zad1
RUN apk add --update nodejs npm curl && \
    rm -rf /etc/apk/cache && \
    npm install
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1s \
  CMD curl -f http://localhost:80/ || exit 1
CMD ["node","index.js"]
