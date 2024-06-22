#!/bin/bash
docker build --no-cache -t arch-ansible-setup .
docker run --rm -it -v $(pwd):/ansible arch-ansible-setup bash