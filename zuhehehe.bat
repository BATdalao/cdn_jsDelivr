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
echo imgs�ļ�
echo. 
echo �T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T
echo ��ѡ��ͼ���ʽ���� 
echo    11.jpg    
echo    12.png
echo    13.����   
echo    15.�˳� 
echo.
set /p n=���������: 
if "%n%"=="" cls&goto :1 
if "%n%"=="11" call :11
if "%n%"=="12" call :12
if "%n%"=="13" call :13 
if "%n%"=="15" call :15
if /i "%n%"=="n" exit 

:11
echo imgs�ļ���,����jpgͼ���ʽ
set /p old=�����ϴ����ļ����������Ȼ��س�:
set /p new=�����ļ����ƣ����ü��ļ���׺��:
copy %old% G:\cdn_jsDelivr\imgs\%new%.jpg
echo �Ѿ���ͼƬ���Ƶ�ָ���ļ���
echo ����ͼƬ����https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg >test.txt
clip < test.txt
echo �Ѿ���ͼƬ���Ӹ��Ƶ��˼��а��� 
goto :1

:12
echo imgs�ļ���,����pngͼ���ʽ
set /p old=�����ϴ����ļ����������Ȼ��س�:
set /p new=�����ļ����ƣ����ü��ļ���׺��:
copy %old% G:\cdn_jsDelivr\imgs\%new%.png
echo �Ѿ���ͼƬ���Ƶ�ָ���ļ���
echo ����ͼƬ����https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.png
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.png >test.txt
clip < test.txt
echo �Ѿ���ͼƬ���Ӹ��Ƶ��˼��а��� 
goto :1

:13
echo imgs�ļ���,��������ͼ���ʽ
set /p old=�����ϴ����ļ����������Ȼ��س�:
set /p new=�����ļ����ƣ�ע����ļ���׺��:
copy %old% G:\cdn_jsDelivr\imgs\%new%
echo �Ѿ���ͼƬ���Ƶ�ָ���ļ���
echo ����ͼƬ����https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new% >test.txt
clip < test.txt
echo �Ѿ���ͼƬ���Ӹ��Ƶ��˼��а��� 
goto :1

:15
goto :caozuo 

:2 
echo videos�ļ���
set /p user=please input:
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/videos/%user% >test.txt
clip < test.txt
goto :1
