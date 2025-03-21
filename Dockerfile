FROM ubuntu:latest
WORKDIR /app
#Installing npm
RUN apt update
RUN apt-get install -y nodejs npm

COPY ./my-react-app /app

RUN npm install

EXPOSE 85

CMD ["npm","start"]

#run commands
# docker build -t nknick99/react_app_dem_ubuntuo:1.0 . 
# docker run -p 85:80 nknick99/react_app_dem_ubuntuo:1.0 (will run on localhost:85)