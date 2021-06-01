FROM jenkins/jenkins:lts

USER root

#Essentials Plugins
RUN /usr/local/bin/install-plugins.sh codedeploy
RUN /usr/local/bin/install-plugins.sh blueocean
RUN /usr/local/bin/install-plugins.sh maven-plugin
RUN /usr/local/bin/install-plugins.sh build-pipeline-plugin
RUN /usr/local/bin/install-plugins.sh dashboard-view
RUN /usr/local/bin/install-plugins.sh workflow-multibranch
RUN /usr/local/bin/install-plugins.sh git
RUN /usr/local/bin/install-plugins.sh job-dsl
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh generic-webhook-trigger
RUN /usr/local/bin/install-plugins.sh workflow-cps-global-lib
RUN /usr/local/bin/install-plugins.sh workflow-cps
RUN /usr/local/bin/install-plugins.sh ws-cleanup
RUN /usr/local/bin/install-plugins.sh remote-file
RUN /usr/local/bin/install-plugins.sh kiuwanJenkinsPlugin
RUN /usr/local/bin/install-plugins.sh sonar

# Plugins for better UX (not mandatory)
RUN /usr/local/bin/install-plugins.sh ansicolor
RUN /usr/local/bin/install-plugins.sh greenballs

# Plugin for scaling Jenkins agents
RUN /usr/local/bin/install-plugins.sh kubernetes

#USER jenkins