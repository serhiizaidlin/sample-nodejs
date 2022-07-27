FROM ubuntu

RUN mkdir /app
WORKDIR /app
RUN apt update && apt install nodejs npm -y
COPY . /app/

RUN npm install

EXPOSE 3000

CMD ["node", "./bin/www"]
