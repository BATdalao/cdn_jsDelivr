@echo off 
Title ��ȡ��ַ                                              
Color 0A   
:caozuo  
echo. 
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T
echo ��ѡ���ļ��С���      
echo    1.imgs
echo    2.videos   
echo.
set /p n=���������: 
if "%n%"=="" cls&goto :caozuo 
if "%n%"=="1" call :1 
if "%n%"=="2" call :2 
if /i "%n%"=="n" exit 
pause 
goto :eof 

:1 
echo imgs�ļ���
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%user% >test.txt
clip < test.txt
goto :caozuo 

:2 
echo videos�ļ���
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/videos/%user% >test.txt
clip < test.txt
goto :caozuo 
