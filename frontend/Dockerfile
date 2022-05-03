FROM node:12-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install --only=prod
COPY . /app
RUN npm run build

FROM nginx:1.21.6
COPY --from=builder /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]