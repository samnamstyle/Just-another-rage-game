@echo off
//Menu
:home
cls
echo Just Another Rage Game...
echo Press T to enter the tutorial.
echo Press P to play!
echo Press I for info
set /p gamest=
if %gamest% == t goto tut
if %gamest% == p goto play
if %gamest% == i goto info

:info
start GameInfo.html
goto home

:loss
cls
echo U LOSE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo Play again? Y/N
set /p lossChoice=
if lossChoice == y goto play
if lossChoice == n goto home
if lossChoice == Y goto play
if lossChoice == N goto home

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
//Also make sure you identify the question like :q1 for instance
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


:q2
set q=q2
echo (2.)
echo.
echo Lives: %life%
echo.
echo Now... Say my name
echo.
echo.
echo (A) samnam_style
echo (B) sammnam_style
echo (C) You don't have one
echo (D) The square root of 2
set /p answer= 
if %answer% == a goto q3
if %answer% == b goto fail
if %answer% == c goto fail
if %answer% == d goto fail


:q3
set q=q3
echo (3.)
echo.
echo Lives: %life%
echo.
echo The Anther Ith Thimple! Chosse The Moth!
echo.
echo.
echo (A) The Moth
echo (B) In my ear
echo (C) Y U ASK ME DIS
echo (D) Moss
set /p answer=
if %answer% == a goto fail 
if %answer% == b goto fail
if %answer% == c goto fail
if %answer% == d goto q4


:q4
set q=q4
echo (4.)
echo.
echo Lives: %life%
echo.
echo Cette question est en français!
echo.
echo.
echo (A) Ces't Ca
echo (B) WASN'T THIS QUOUIZ IN ENGLUSH?!?!/BYUBT
echo (C) no
echo (D) no
set /p answer=
if %answer% == a goto q5 
if %answer% == b goto fail
if %answer% == c goto fail
if %answer% == d goto fail

