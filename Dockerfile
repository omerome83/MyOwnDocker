FROM node:19-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "start"]
EXPOSE 3000
