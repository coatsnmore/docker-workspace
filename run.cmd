SET TAG=coatsn/linux
ECHO TAG = %TAG%
docker build -t %TAG% .
docker run --user=coatsn -it %TAG%