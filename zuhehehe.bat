@echo off 
Title 上传                                              
Color 0A   
:caozuo  
echo. 
echo ═══════════════════════════════════════
echo 【命令】： 
echo    0.上传到git     
echo    1.imgs
echo    2.videos   
echo.
set /p n=输入操作号: 
if "%n%"=="" cls&goto :caozuo 
if "%n%"=="0" call :0
if "%n%"=="1" call :1 
if "%n%"=="2" call :2 
if /i "%n%"=="n" exit 
pause 
goto :eof 

:0
echo 上传到git
git add .
git commit -m 'a'
git push
goto :caozuo 

:1 
echo imgs文件
echo. 
echo ═══════════════════════════════════════
echo 【选择图像格式】： 
echo    11.jpg    
echo    12.png
echo    13.其他   
echo    15.退出 
echo.
set /p n=输入操作号: 
if "%n%"=="" cls&goto :1 
if "%n%"=="11" call :11
if "%n%"=="12" call :12
if "%n%"=="13" call :13 
if "%n%"=="15" call :15
if /i "%n%"=="n" exit 

:11
echo imgs文件夹,传输jpg图像格式
set /p old=将待上传的文件拖入命令框然后回车:
set /p new=输入文件名称（不用加文件后缀）:
copy %old% G:\cdn_jsDelivr\imgs\%new%.jpg
echo 已经将图片复制到指定文件夹
echo 生成图片链接https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg >test.txt
clip < test.txt
echo 已经将图片链接复制到了剪切板上 
goto :1

:12
echo imgs文件夹,传输png图像格式
set /p old=将待上传的文件拖入命令框然后回车:
set /p new=输入文件名称（不用加文件后缀）:
copy %old% G:\cdn_jsDelivr\imgs\%new%.png
echo 已经将图片复制到指定文件夹
echo 生成图片链接https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.png
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.png >test.txt
clip < test.txt
echo 已经将图片链接复制到了剪切板上 
goto :1

:13
echo imgs文件夹,传输其他图像格式
set /p old=将待上传的文件拖入命令框然后回车:
set /p new=输入文件名称（注意加文件后缀）:
copy %old% G:\cdn_jsDelivr\imgs\%new%
echo 已经将图片复制到指定文件夹
echo 生成图片链接https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new% >test.txt
clip < test.txt
echo 已经将图片链接复制到了剪切板上 
goto :1

:15
goto :caozuo 

:2 
echo videos文件夹
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/videos/%user% >test.txt
clip < test.txt
goto :1
