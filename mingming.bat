@echo off
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/%user% >test.txt
clip < test.txt
pause


