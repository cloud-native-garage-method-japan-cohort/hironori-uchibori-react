FROM node:20
WORKDIR /reactapp
ENV PATH /reactapp/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm i
COPY . ./
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]