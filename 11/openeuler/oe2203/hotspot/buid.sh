#!/bin/bash

find . -name *.sh | xargs sed -i 's/\r//' && \
  docker build --build-arg JENKINS_VERSION=2.375.1 --tag jenksin:2.380 .