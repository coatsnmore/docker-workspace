SET TAG=coatsn/alpine
ECHO TAG = %TAG%
docker build -f alpine.Dockerfile -t %TAG% .