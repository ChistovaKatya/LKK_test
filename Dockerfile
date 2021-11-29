FROM ubuntu:20.04

# install packages
RUN apt-get update \
    && apt-get install -y -q \
    curl \
    && rm -rf /var/lib/apt/lists/*


# install NVM
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 16.13.0
ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN mkdir -p $NVM_DIR
RUN curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

RUN npm install -g newman
RUN npm install -g newman-reporter-teamcity
RUN npm install -g newman-reporter-html
