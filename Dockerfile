FROM node:6.10.0
RUN npm install -g pm2@1.1.3

RUN mkdir -p /usr/local/app
WORKDIR /usr/local/app


COPY . .

ENTRYPOINT ["pm2", "--no-daemon", "start"]

# Actual script to start can be overridden from `docker run`
CMD ["process.json"]