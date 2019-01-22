FROM ubuntu

RUN apt-get update -y && apt-get install git -y
RUN DEBIAN_FRONTEND=noninteractive apt install curl -y openssh-server ca-certificates postfix
RUN DEBIAN_FRONTEND=noninteractive curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN DEBIAN_FRONTEND=noninteractive apt install -y gitlab-ce
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
WORKDIR /etc/gitlab
RUN rm -rf gitlab.rb
RUN curl https://raw.githubusercontent.com/simofilahi/gitlab/master/gitlab.rb --output gitlab.rb
WORKDIR /etc/ssh/
RUN rm -rf ssh_config
RUN curl https://raw.githubusercontent.com/simofilahi/gitlab/master/ssh_config --output ssh_config
WORKDIR /
RUN echo "/opt/gitlab/embedded/bin/runsvdir-start&  gitlab-ctl reconfigure" > script.sh
RUN echo "service ssh restart" >> script.sh
RUN echo "tail -f /dev/null" >> script.sh
RUN chmod 777 script.sh
EXPOSE 443 80 22
CMD ["sh", "script.sh"]
#build : docker build -t gitlab .
#run : docker run -p 443:443 -p 80:80 -p 222:22 -it gitlab
