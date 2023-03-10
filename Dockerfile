FROM node:19-alpine

WORKDIR /app

# Copy only required files to install dependencies (for better caching)
COPY package*.json ./

RUN npm install

USER node

# Using a non-root user for added security
COPY --chown=node:node ./ .

EXPOSE 3000

CMD ["node", "app.js"]
