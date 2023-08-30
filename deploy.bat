cd server
if %errorlevel% neq 0 exit /b %errorlevel%
call npm install
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../client
if %errorlevel% neq 0 exit /b %errorlevel%
call npm install
if %errorlevel% neq 0 exit /b %errorlevel%
call npm run build
if %errorlevel% neq 0 exit /b %errorlevel%
cd ../server
if %errorlevel% neq 0 exit /b %errorlevel%
call pm2 restart index.js
if %errorlevel% neq 0 exit /b %errorlevel%