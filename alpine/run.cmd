SET TAG=coatsn/alpine-workspace
ECHO TAG = %TAG%
docker build -t %TAG% .
REM docker run --mount type=volume,src=//c//devl//docker-workspace//test,dst=/data -it %TAG%
docker run -it %TAG%