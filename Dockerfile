FROM alpine

COPY server.js nodeapp/

RUN apk update
RUN apk add nodejs
ENTRYPOINT ["node", "nodeapp/server.js"]
