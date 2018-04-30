SET TAG=coatsn/alpine-user-workspace
ECHO TAG = %TAG%
docker build -f user.Dockerfile -t %TAG% .
docker run --user=coatsn -it %TAG%