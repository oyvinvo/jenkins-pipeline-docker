FROM jenkins
USER root
RUN apt-get update && apt-get install -y maven && apt-get install -y openjdk-8-jre
USER jenkins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt
