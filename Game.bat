@echo off
//Menu
:home
cls
echo Just Another Rage Game...
echo Press T to enter the tutorial.
echo Press P to play!
set /p gamest=
if %gamest% == t goto tut
if %gamest% == p goto play


:tut
cls
echo This is a impossible quiz like game!
echo Try To Win!
echo Type in the letter you think is the answer!
pause
goto home

:fail
set /a life=%life%-1
if %life% == 0 goto loss
goto %q%
:play
set life=5
cls
//Make sure you set the question number!
:q1
set q=q1
echo (1.)
echo.
echo Lives: %life%
echo.
echo Where is my thing?
echo.
echo.
echo (A) Down Ma Pants
echo (B) In my ear
echo (C) In Ma BOOTY
echo (D) Over There ->
set /p answer=
if %answer% == a goto fail 
if %answer% == b goto fail
if %answer% == c goto fail
if %answer% == d goto q2

