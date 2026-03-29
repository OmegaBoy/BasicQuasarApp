FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install -g @quasar/cli && npm install
EXPOSE 9000
CMD ["quasar", "dev", "-H", "0.0.0.0", "-p", "9000"]