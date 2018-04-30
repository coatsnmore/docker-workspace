SET TAG=coatsn/ubuntu-lxde
SET USER_WORKSPACE=//c//devl//docker-workspace//test
docker build -t %TAG% .
docker run -p 6080:80 -v %USER_WORKSPACE%:/home/src -it %TAG%