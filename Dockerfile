FROM node:6.10.0
RUN npm install -g pm2@1.1.3

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app


COPY . .


# Actual script to start can be overridden from `docker run`
CMD ["node", "app.js"]