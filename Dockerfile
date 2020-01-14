FROM node:12
USER node
ENV HOME /home/node

# Change directory of global npm packages
RUN mkdir /home/node/.npm-global

# Copy config files to container from Git (.bashrc, .gitconfig, etc)
RUN rm /home/node/.bashrc
RUN curl -Lks https://gist.githubusercontent.com/TrevorEyre/c4170c6023e94f86cac1d8025aa3176d/raw | /bin/bash
