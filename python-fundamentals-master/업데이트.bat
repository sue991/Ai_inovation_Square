@echo off
set NAME=Python-Fundamentals
title %NAME%
color 0A
set url=https://github.com/Wind-Kyle/python-fundamentals.git
set branch=origin/master

goto fetch
goto report_issue


:initialize
echo.
echo Initializing git ...
git init
git remote add %branch% %url%


:fetch
if not exist "%CD%\.git" goto initialize
echo.
echo Updating for latest files ...
echo.
cd "%CD%"
git reset --hard FETCH_HEAD
git fetch --all


:report_issue
echo.
echo Please check the issue, before report it.
echo :: https://github.com/Wind-Kyle/python-fundamentals/ ::
echo.
set /P menu=Do you want to go to the Issues page? (y/n):
if "%menu%"=="y" start https://github.com/Wind-Kyle/python-fundamentals/issues/
if "%menu%"=="n" echo Good Bye!
pause
