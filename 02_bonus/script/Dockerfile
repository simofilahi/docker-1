FROM ubuntu
RUN apt-get update && apt-get install apt-file -y
COPY script.sh .
RUN chmod 777 script.sh
CMD ["./script.sh"]
