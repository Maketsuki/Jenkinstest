#!/bin/bash

# Navigate to server directory and install dependencies
cd server
npm install

# Navigate to client directory, install dependencies and build the project
cd ../client
npm install
npm run build

# Deploy server
cd ../server
pm2 restart index.js

# Optionally: Deploy client to a web server like Nginx or Apache