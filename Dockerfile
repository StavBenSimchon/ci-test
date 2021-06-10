FROM node:alpine
WORKDIR /app
COPY . .

RUN adduser -D -g '' user 

RUN npm install

# RUN npm install

USER user

CMD [ "npm" , "start" ]