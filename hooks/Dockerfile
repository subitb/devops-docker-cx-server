FROM maven:3-jdk-8

RUN apt-get -y update && apt-get -y install webhook
ADD https://github.com/SAP/jenkins-library/releases/latest/download/piper_master /bin/piper
RUN chmod +x /bin/piper
COPY hook.json /
COPY script.sh /
RUN chmod +x script.sh

ENTRYPOINT [ "webhook", "-hooks", "/hook.json", "-verbose" ]
