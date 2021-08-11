@echo off
set /p old=please input old:
set /p new=please input new:
copy %old% G:\cdn_jsDelivr\imgs\%new%.jpg
echo https://cdn.jsdelivr.net/gh/BATdalao/cdn_jsDelivr/imgs/%new%.jpg >test.txt
clip < test.txt
pause


