SET TAG=coatsn/ubuntu-lxde
SET USER_WORKSPACE=//c//devl//docker-workspace//test
SET VNC_PASSWORD=mypassword
SET USER=coatsn
SET PASSWORD=password
docker build -t %TAG% .
docker run -p 6080:80 -p 5900:5900 -e USER=%USER% -e PASSWORD=%PASSWORD% -e RESOLUTION=1920x1080 -e VNC_PASSWORD=%VNC_PASSWORD% -v %USER_WORKSPACE%:/home/src -it %TAG%