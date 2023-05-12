# Zadanie 1

## a) Budowanie obrazu :
docker build -t zad1 .
## b) Uruchamianie kontenera :
docker run -d -p 80:80 --rm --name z1 zad1
## c) Wygenerowane logi :
docker logs z1
## d) Sprawdzenie ilości warstw :
docker history zad1

## Repozytorium z plikami aplikacji : https://github.com/KacperLAB/zad1_src
## W katalogu 'zrzuty_ekranu' znajdują się zrzuty ekrany prezentujące efekty powyższych poleceń oraz wynik skanu wrażliwości.
## Może być wymagane pobranie innej wersji systemu alpine, w zależności od używanej architektury (oraz dokonanie zmiany w pliku Dockerfile)
