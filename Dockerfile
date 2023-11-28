# syntax=docker/dockerfile:1.4
# This image only use for production environment setup
# Build Phase
FROM node:18-alpine as builder 

# Create app directory
WORKDIR '/app'

# Copy dependency definitions
COPY ./package.json /app
COPY ./package-lock.json /app
# Install dependecies
RUN npm install
# Get all the code needed to run the app
COPY ./ /app

RUN npm run build 


# Run Phase
FROM nginx
# Port map 
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
