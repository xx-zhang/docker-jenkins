FROM registry.cn-hangzhou.aliyuncs.com/pendevs/jenkins:latest-oe2203
ARG user=jenkins
ARG group=jenkins

USER root
RUN yum -y install docker

# TODO TopCIS Add Plugins Test
RUN yum -y install docker
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

USER ${user}

