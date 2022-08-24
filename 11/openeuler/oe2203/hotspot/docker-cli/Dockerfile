FROM registry.cn-hangzhou.aliyuncs.com/pendevs/jenkins:oe2203

USER root
RUN yum -y install docker
USER jenkins

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
# RUN jenkins-plugin-cli --plugins "docker-build-step docker-workflow"

