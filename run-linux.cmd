SET TAG=coatsn/linux:basic
ECHO TAG = %TAG%
docker build -f linux.Dockerfile -t %TAG% .
docker run -it %TAG%
