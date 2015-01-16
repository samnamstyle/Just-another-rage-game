@echo off
//Menu
:home
cls
echo Welcome to the game!
echo Press T to enter the tutorial.
echo Press P to play!
set /p gamest=
if %gamest% == t goto tut
if %gamest% == p goto play


:tut


:play
cls

