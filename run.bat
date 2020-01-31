@echo off 
setlocal enableextensions 

::cd proxy
::call docker build -t proxy_image .
::cd ..

::cd redis
::call docker build -t redis_image .
::cd ..

::cd redis-sentinel-proxy-charm
::call helm delete redis-sentinel-proxy .
::call helm template .
::call helm install redis-sentinel-proxy .
::cd ..

cd proxy/src
call go build -o main.exe .
call main.exe

endlocal 
