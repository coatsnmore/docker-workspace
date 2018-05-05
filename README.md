Barf.

# Docker Workspaces based on Linux distros

The goal is to build a general workspaces in various ways to achieve onboarding velocity in a team setting as well as providing consistency of developer runtime dependencies.

Variants so far:

## 1. Alpine-based CLI image.  Check the directory `alpine/`.

It's helpful to store a long command in a script file.  For example, on Windows, you could create a script called `run.cmd` and include:


        SET TAG=coatsn/alpine-workspace
        SET USER_WORKSPACE=//c//devl
        docker run -v %USER_WORKSPACE%:/home/src -it %TAG%


## 2. Ubuntu with vnc access

This is a visual programming environment using Ubuntu and a lighweight X11 development environment (lxde).  It also has a VNC server running, as well presenting a web server option that serves a browser-based VNC client.  This makes for fast sharing of workspaces.

## 3. Che

Based on the Eclipse Che project for complex Docker-based workspaces.

## 4. Theia

Based on the Visual Studio Code and Docker-based cloud IDE project.

# References

* [Installing Ruby on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-and-set-up-a-local-programming-environment-on-ubuntu-16-04#step-1-%E2%80%94-using-the-terminal)
* [NoVNC](http://novnc.com/info.html)
* [Running VNC on ubuntu](https://github.com/dockerfile/ubuntu-desktop/blob/master/Dockerfile)
* [Linux Directory Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard)