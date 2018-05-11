FROM jenkins/jenkins:lts

USER root 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y build-essential nodejs 
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN npm install -g purescript pulp bower  --unsafe-perm=true
USER jenkins


