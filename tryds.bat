@echo off
set a=%date:~0,10%
echo %a%
set b=%time%
echo %b% 
echo %date:~0,10%/%time%

set d=%date:~0,10%
set d=%d:/=%
set t=%time:~0,10%
set t=%t::=%
set t=%t:.=%
set new=%d%%t%
echo %new% 
set /p new=:
echo %new% 
pause