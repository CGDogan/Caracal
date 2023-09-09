FROM node:20-alpine
RUN apk add --no-cache git
RUN apk add --no-cache openssl
RUN mkdir /src
COPY . /src
WORKDIR /src
RUN npm install
ARG viewer
ARG fork
RUN git clone https://github.com/cgdogan/camicroscope.git --branch=developclean --depth 1
EXPOSE 4010

CMD node caracal.js
