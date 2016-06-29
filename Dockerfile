FROM node:5.12
# Create app directory
RUN mkdir -p /usr/src/myapp
WORKDIR /usr/src/myapp


RUN cd /usr/src/myapp
RUN wget https://github.com/krazyideas/frontend/archive/v0.0.2.tar.gz
RUN tar --strip-component 1 -zxvf v0.0.2.tar.gz
RUN wget https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64

# Satisfy dependencies
RUN npm install

RUN chmod +x jq-linux64

ADD run.sh /usr/src/myapp
#CMD ls -alth conf/

EXPOSE 3000
CMD ./run.sh

