# Zadanie 1

## a) Budowanie obrazu :
docker build --no-cache -t zad1 .
* opcja '--no-cache' jest wymagana w celu "wymuszenia" pobierania najnowszych wersji plików z repozytorium
## b) Uruchamianie kontenera :
docker run -d -p 80:80 --rm --name z1 zad1
## c) Wygenerowane logi :
docker logs z1
## d) Sprawdzenie ilości warstw :
docker history zad1
