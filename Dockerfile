# Use the official Arch Linux image as the base
FROM archlinux:latest
ARG TAGS
WORKDIR /usr/local/bin

# Update the package database and install necessary packages
RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm ansible base-devel

COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
