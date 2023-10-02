# docker-react-apps-deployment

Workflow of Docker React.js apps deployment by using React.js, node.js, Docker, Travis CI, AWS


## Getting Started with Create React App

This project was bootstrapped with Create React App

## Available Scripts

install essential dependency 
### `npm install`

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.


### `npm test`

Launches the test runner in the interactive watch mode.

### `npm run build`

Builds the app for production to the `build` folder.

## Docker command

For development environment setup. 
- `docker compose up`
- `docker compose up --build`


For production environment setup 

- `docker build -t yourId/workflow`

- `docker run -p 8080:80 yourId/workflow`