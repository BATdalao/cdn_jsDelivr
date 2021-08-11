@echo off 
Title 获取地址                                              
Color 0A   
:caozuo  
echo. 
echo ═══════════════════════════════════════
echo 【选择文件夹】：      
echo    1.imgs
echo    2.videos   
echo.
set /p n=输入操作号: 
if "%n%"=="" cls&goto :caozuo 
if "%n%"=="1" call :1 
if "%n%"=="2" call :2 
if /i "%n%"=="n" exit 
pause 
goto :eof 

:1 
echo imgs文件夹
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%user% >test.txt
clip < test.txt
goto :caozuo 

:2 
echo videos文件夹
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/videos/%user% >test.txt
clip < test.txt
goto :caozuo 
