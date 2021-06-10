FROM node:alpine AS builder
WORKDIR /app
COPY . .

RUN adduser -D -g '' user 

RUN npm install && \
npx webpack --config webpack.config.js && \
npm run build

FROM node:alpine
COPY --from=builder /app/dist ./