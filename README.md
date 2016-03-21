# package-query
Automatically build packages

This repository is an example of how to build Arch Linux packages automatically using Docker Hub.

It consists of a PKGBUILD* file (pulled from https://aur.archlinux.org/) and a Dockerfile** file

*A PKGBUILD is a shell script containing the build information required by Arch Linux packages.

**A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image.

Build logs at https://hub.docker.com/r/rafaelsoares/package-query/

Steps to reproduce:

1 - Fork this repository;

2 - Create a Docker Hub account and link it to your GitHub account;

3 - Create automated build on Docker Hub.
