@echo off
cd ..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P tteUsername="Username: "

rem Export the environment variables:
set ttePassword=password
set TTE_PLAYCOOKIE=%tteUsername%
set TTE_GAMESERVER=127.0.0.1

echo ===============================
echo Starting Toontown Evolution...
echo ppython: %PPYTHON_PATH%
echo Username: %tteUsername%
echo Gameserver: %TTE_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause
