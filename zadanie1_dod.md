# Część dodatkowa (punkt 4)

## Utworzenie i wybranie buildera :
1) docker buildx create --name mybuilder --driver docker-container --bootstrap
2) docker buildx use mybuilder
## Zbudowanie obrazu i wysłanie do repozytorium dockerhub <br> https://hub.docker.com/repository/docker/kacperlab/tch/general
docker buildx build -f Dockerfile2 --platform linux/arm/v7,linux/arm64/v8,linux/amd64 -t kacperlab/tch:zad1dod --push .

## Repozytorium z plikami aplikacji https://github.com/KacperLAB/zad1_src
## W katalogu 'zrzuty_ekranu' znajdują się zrzuty ekranu przedstawiające efekty powyższych poleceń

