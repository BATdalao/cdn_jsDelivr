@echo off 
Title �ϴ�                                              
Color 0A   
:caozuo  
echo. 
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T
echo ������� 
echo    0.�ϴ���git     
echo    1.imgs
echo    2.videos   
echo.
set /p n=���������: 
if "%n%"=="" cls&goto :caozuo 
if "%n%"=="0" call :0
if "%n%"=="1" call :1 
if "%n%"=="2" call :2 
if /i "%n%"=="n" exit 
pause 
goto :eof 

:0
echo �ϴ���git
git add .
git commit -m 'a'
git push
goto :caozuo 

:1 
echo imgs�ļ���
set /p old=please input old:
set /p new=please input new:
copy %old% G:\cdn_jsDelivr\imgs\%new%.jpg
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg >test.txt
clip < test.txt
goto :caozuo 

:2 
echo videos�ļ���
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/videos/%user% >test.txt
clip < test.txt
goto :caozuo 
