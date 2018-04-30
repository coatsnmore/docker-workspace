SET TAG=coatsn/alpine
ECHO TAG = %TAG%
docker build -t %TAG% .
docker run -it %TAG%
