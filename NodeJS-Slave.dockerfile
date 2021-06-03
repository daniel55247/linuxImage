FROM jenkins/inbound-agent

USER root

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get -y autoclean

USER jenkins
USER root

USER root
#RUN apt install zip 
RUN apt install unzip

USER jenkins

ENTRYPOINT ["jenkins-slave"]