FROM ubuntu:latest
WORKDIR /app
#Installing npm
RUN apt update
RUN apt-get install -y nodejs npm

COPY ./my-react-app /app

RUN npm install

EXPOSE 85

CMD ["npm","start"]

