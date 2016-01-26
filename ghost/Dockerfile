FROM node:0.10

WORKDIR /ghost

RUN git clone https://github.com/tryghost/Ghost /ghost && \
    git checkout refs/tags/0.7.5 && \
    npm install -g grunt-cli && \
    npm install && \
    grunt init

CMD ["npm", "start"]
