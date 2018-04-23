FROM alpine

COPY server.js nodeapp/
COPY index.html nodeapp/

RUN apk update
RUN apk add nodejs
RUN apk add socket.io
ENTRYPOINT ["node", "nodeapp/server.js"]
