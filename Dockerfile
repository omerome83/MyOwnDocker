FROM node:19-alpine
WORKDIR /myowndocker
COPY . .
RUN npm install
CMD ["node", "app.js"]
EXPOSE 3000
