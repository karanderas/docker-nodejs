FROM alpine

COPY server.js nodeapp/
COPY index.html nodeapp/

RUN apk update
RUN apk add nodejs
RUN npm init
RUN npm install socket.io
RUN node server.js
ENTRYPOINT ["node", "nodeapp/server.js"]
