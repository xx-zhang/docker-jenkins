FROM registry.cn-hangzhou.aliyuncs.com/pendevs/jenkins:v2.365.oe2203

USER root
RUN yum -y install docker

RUN chown -R ${user} /usr/local/bin/* /bin/jenkins-plugin-cli
RUN chmod u+x /usr/local/bin/* /bin/jenkins-plugin-cli

USER ${user}

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
# RUN jenkins-plugin-cli --plugins "docker-build-step docker-workflow"

