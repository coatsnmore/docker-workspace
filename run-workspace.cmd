SET TAG=coatsn/alpine-workspace
SET USER_WORKSPACE=//c//devl//docker-workspace//test
REM docker run --mount type=volume,src=//c//devl//docker-workspace//test,dst=/data -it %TAG%
docker run -v %USER_WORKSPACE%:/home/src -it %TAG%