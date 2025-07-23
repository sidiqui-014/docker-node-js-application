## dockerfile for node.js applictaion

# 1. Use official Node.js image
FROM node:18

# 2. Create app directory inside container
WORKDIR /usr/src/app

# 3. Copy files into container
COPY package*.json ./
COPY app.js ./

# 4. Install dependencies
RUN npm install

# 5. Expose port 3000
EXPOSE 3000

# 6. Command to run app
CMD [ "npm", "start" ]

