FROM node:latest

RUN apt-get update && apt-get install -y vim curl

# Repo is unhappy unless we configure git...
RUN git config --global user.email "you@example.com" && \
    git config --global user.name "Your Name"

RUN npm install -g taskcluster-vcs@2.3.9-alpha3 --no-optional
ENTRYPOINT ["tc-vcs"]

