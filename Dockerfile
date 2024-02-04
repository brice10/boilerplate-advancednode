FROM node:14

COPY . /app
WORKDIR /app
RUN npm install

ARG PORT
ENV PORT=$PORT

EXPOSE $PORT
CMD ["npm", "start"]