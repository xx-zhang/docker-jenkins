cd /var/lib/jenkins/updates

执行如下替换命令：

sed -i 's/https:\/\/updates.jenkins.io\/download/https:\/\/mirrors.tuna.tsinghua.edu.cn\/jenkins/g' default.json


升级站点

https://mirrors.tuna.tsinghua.edu.cn/jenkins/updates/update-center.json

