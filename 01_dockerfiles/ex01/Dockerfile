FROM ubuntu
RUN apt-get update -y && \
	apt-get install wget bzip2 -y && \
	wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 && \
	tar xfvj teamspeak3-server_linux_amd64-3.5.1.tar.bz2
WORKDIR teamspeak3-server_linux_amd64
EXPOSE 9987/udp 10011 30033 
CMD [ "sh", "ts3server_minimal_runscript.sh" ]
#docker build -t new_teamserver .
#run container of new_image : docker run -p 9987:9987/udp -p 10011:10011 -p 30033:30033 -e TS3SERVER_LICENSE=accept new_teamserver
