FROM node:alpine
WORKDIR /src
ADD ./backend /src/backend
ADD ./client /src/client
ADD ./app.js /src/app.js
RUN cd /src/backend && yarn add sqlite3 && npm install --silent
CMD ["node", "/src/app.js"]
EXPOSE 3230