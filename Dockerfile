FROM node:24-bookworm-slim

WORKDIR /app

# copy package files first
COPY package*.json ./

# install dependencies
RUN npm install

# copy remaining code
COPY . .

# expose port (must match deployment.yaml)
EXPOSE 8000

CMD ["node", "app.js"]
