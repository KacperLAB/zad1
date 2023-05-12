#etap sluzacy do pobrania wymaganych plikow z repo github
FROM scratch AS github
#rozpakowanie pliku z systemem
ADD alpine-minirootfs-3.18.0-x86_64.tar.gz /
#instalacja polecenia git i pobranie repo z wymaganymi plikami
RUN apk add git && \
    git clone https://github.com/KacperLAB/zad1_src /git

#etap "wlasciwy" - serwer node
FROM scratch
#dane autora
LABEL org.opencontainers.image.authors="Kacper Papinski"
#rozpakowanie pliku z systemem
ADD alpine-minirootfs-3.18.0-x86_64.tar.gz /
#skopiowanie plikow pobranych na wczesniejszym etapie
COPY --from=github /git/. /zad1/
#ustawienie katalogu roboczego
WORKDIR /zad1
#instalacja aktualizacji i wymaganych poleceń
RUN apk add --update nodejs npm curl && \
    rm -rf /etc/apk/cache && \
    npm install
#wystawienie portu
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1s \
  CMD curl -f http://localhost:80/ || exit 1
#komenda wywolywana przy starcie kontenera - wlaczenie serwera
CMD ["node","index.js"]
