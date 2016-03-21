FROM pritunl/archlinux:latest
MAINTAINER Rafael Soares

# Install base-devel
RUN pacman -S --noconfirm gc guile libatomic_ops libmpc perl-error autoconf automake binutils bison fakeroot flex gcc groff libtool m4 make patch pkg-config sudo

# Create an unprivileged user
RUN useradd -m boss

# Install building dependencies
RUN pacman -S --noconfirm git yajl

# Change to an unprivileged user
USER boss

# Building the package
RUN cd /home/boss && git clone https://github.com/rafaelsoaresbr/package-query.git && cd package-query && makepkg

