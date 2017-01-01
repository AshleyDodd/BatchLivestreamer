@echo off
:loop
title Stream Checker

tasklist /v | find /I /c "Summit1G" > nul
if "%ERRORLEVEL%" == "0" goto :running

echo ======================
echo = Stream Not Running =
echo ======================

ping 1.1.1.1 -n 1 -w 5000 >NUL
goto start


:start
cls
taskkill /im mpc-hc64.exe
call "stream.bat"

cls
echo =====================
echo = Rechecking Stream =
echo =====================
ping 1.1.1.1 -n 1 -w 1000 >NUL
cls
goto loop


:running
cls
echo ===========================================================
echo = Already Running - Waiting 5 minutes before trying again =
echo ===========================================================
ping 1.1.1.1 -n 1 -w 300000 >NUL
goto loop


echo =========================
echo = Something Happened(?) =
echo =========================
pause