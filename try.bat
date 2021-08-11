@echo off
set p=aaa
if %p%==aaa (
echo %p%
set p=bbb
echo %p%
)
pause