cd server
npm install

cd ../client
npm install
npm run build

cd ../server
pm2 restart index.js