FROM node:17-alpine

# working with the node version 17 called apline 
# This is actually installing the dependencies

RUN npm install -g nodemon

# Run npm install nodemon in our system

WORKDIR /app

# This means that I am creating a folder called app in the virtual machine and working in that specifically

COPY package.json .

# This mean copying package.json from currentFolder to working directory

RUN npm install

# This would be run on the command line of the working directory

COPY . .

# This actually means that we are copying everything

EXPOSE 4000

#  so we are exposing the port 4000 here for the virtual machine

CMD [ "npm" , "run" , "dev" ] 

# what the hell is this for

