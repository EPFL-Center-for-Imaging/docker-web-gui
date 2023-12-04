# Docker Dashboard

## Start the app
Before you follow below steps to start the app, make sure you have `node` and `npm` installed in your system.
- Clone the repository
  ```
  git clone git@github.com:rakibtg/docker-web-gui.git
  ```
- Change directory
  ```
  cd ./docker-web-gui
  ````
- Run `app.js`, it will automatically install all the [node modules](https://github.com/rakibtg/docker-web-gui/blob/master/backend/package.json) for you if not installed already.
  ```
  node app.js
  ```
- Now visit http://localhost:3230/

## Using Docker

- To build the image:
    ```
    docker build -t $(whoami)/$(basename ${PWD}):latest .
    ```
- To run the image:
    ```
    docker run -it --rm -dp 3230:3230 -v /var/run/docker.sock:/var/run/docker.sock --name docker-dashboard $(whoami)/$(basename ${PWD}):latest
    ```
