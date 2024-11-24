FROM node:22.11.0
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install -g @angular/cli
RUN npm install
COPY . .
CMD [ "ng", "serve"]