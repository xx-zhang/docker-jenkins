FROM registry.cn-hangzhou.aliyuncs.com/bdpapp/oe2203:lts

LABEL maintainer="actanble@gmail.com"

RUN sed -i 's/TMOUT=300/TMOUT=0/g' /etc/bashrc
RUN yum -y install openssh-server 

ADD ./ssh /etc/ssh 
RUN chmod 600 -R /etc/ssh/ssh_host_* 


WORKDIR /root/ 
ADD ./ssh/authorized_keys /root/.ssh/authorized_keys

EXPOSE 22 
CMD ["/usr/sbin/sshd", "-D"]
