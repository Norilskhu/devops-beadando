# 1. Stage: Build the Angular app
FROM node:20 AS build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# 2. Stage: Serve the Angular app using NGINX
FROM nginx:1.25-alpine

RUN rm -rf /usr/share/nginx/html/*

# Copy the correct Angular dist folder
COPY --from=build /app/dist/devops-beadando/browser/ /usr/share/nginx/html/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
