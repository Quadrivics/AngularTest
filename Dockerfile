FROM node:8.11.2 as node
WORKDIR /home/Projects/Angular/AfterPayDemo/Angular
COPY package*.json ./
RUN npm i npm@latest -g
RUN npm install --no-cache git
RUN npm install
COPY . .
RUN npm run build


# Stage 2
FROM nginx:1.13.12-alpine
COPY --from=node /home/Projects/Angular/AfterPayDemo/Angular/dist/angularTest /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
