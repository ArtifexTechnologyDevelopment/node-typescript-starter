FROM node:11.12.0-alpine

COPY package.json package.json
RUN npm i

COPY . .
RUN npm run build

CMD ["node", "dist/"]