:: Purpose:       Maps printers when a user logs in
:: Requirements:  Specify the target print server and printer names below
:: Author:        vocatus.gate@gmail.com // github.com/bmrf // reddit.com/user/vocatus // PGP: 0x07d1490f82a211a2
:: Usage:         Place this script in %ProgramData%\Microsoft\Windows\Start Menu\Startup
:: History:       1.0.0 + Initial write



:::::::::::::::
:: VARIABLES :: ---- Set these to your desired values
:::::::::::::::
:: Rules for variables:
::  * NO quotes!                       (bad:  "c:\directory\path"       )
::  * NO trailing slashes on the path! (bad:   c:\directory\            )
::  * Spaces are okay                  (okay:  c:\my folder\with spaces )
::  * Network paths are okay           (okay:  \\server\share name      )
::                                     (       \\172.16.1.5\share name  )

:: Log settings
set LOGPATH=%TEMP%
set LOGFILE=map_printers.log

:: Printers to map
:: Printers to map
set PRINT_SERVER=\\YOUR_PRINT_SERVER
set PRINTER1=Printer_Name_1
set PRINTER2=Printer_Name_2
set PRINTER3=Printer_Name_3


:::::::::::::::::::::
:: PREP AND CHECKS ::
:::::::::::::::::::::
@echo off && cls
set SCRIPT_VERSION=1.0.0
set SCRIPT_UPDATED=2019-11-14
:: Get the date into ISO 8601 standard format (yyyy-mm-dd) so we can use it
FOR /f %%a in ('WMIC OS GET LocalDateTime ^| find "."') DO set DTS=%%a
set CUR_DATE=%DTS:~0,4%-%DTS:~4,2%-%DTS:~6,2%



:::::::::::::
:: EXECUTE ::
:::::::::::::

:: Map the printers
echo.
echo %CUR_DATE% %TIME% Mapping printers...>> "%LOGPATH%\%LOGFILE%"
echo %CUR_DATE% %TIME% Mapping printers, please don't close this window...
echo.


:: Printer 1
echo %CUR_DATE% %TIME% Checking %PRINTER1% online status...>> "%LOGPATH%\%LOGFILE%"
echo %CUR_DATE% %TIME% Checking %PRINTER1% online status...
rundll32 printui.dll,PrintUIEntry /q /Xg /f "%TEMP%\printer_check" /n"%PRINT_SERVER%\%PRINTER1%" >nul
if /i not exist "%TEMP%\printer_check" (
	echo %CUR_DATE% %TIME% "%PRINTER1%" appears to be down, skipping.>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER1%" appears to be down, skipping.
) else ( 
	echo %CUR_DATE% %TIME% "%PRINTER1%" online, mapping now...>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER1%" online, mapping now...
	rundll32 printui.dll,PrintUIEntry /q /in /n"%PRINT_SERVER%\%PRINTER1%"
	echo %CUR_DATE% %TIME% Mapped.
)
if exist "%TEMP%\printer_check" del /f /q "%TEMP%\printer_check" >nul


:: Printer 2
echo %CUR_DATE% %TIME% Checking %PRINTER2% online status...>> "%LOGPATH%\%LOGFILE%"
echo %CUR_DATE% %TIME% Checking %PRINTER2% online status...
rundll32 printui.dll,PrintUIEntry /q /Xg /f "%TEMP%\printer_check" /n"%PRINT_SERVER%\%PRINTER2%" >nul
if /i not exist "%TEMP%\printer_check" (
	echo %CUR_DATE% %TIME% "%PRINTER2%" appears to be down, skipping.>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER2%" appears to be down, skipping.
) else ( 
	echo %CUR_DATE% %TIME% "%PRINTER2%" online, mapping now...>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER2%" online, mapping now...
	rundll32 printui.dll,PrintUIEntry /q /in /n"%PRINT_SERVER%\%PRINTER2%"
	echo %CUR_DATE% %TIME% Mapped.
)
if exist "%TEMP%\printer_check" del /f /q "%TEMP%\printer_check" >nul


:: Printer 3
echo %CUR_DATE% %TIME% Checking "%PRINTER3%"...>> "%LOGPATH%\%LOGFILE%"
echo %CUR_DATE% %TIME% Checking "%PRINTER3%"...
rundll32 printui.dll,PrintUIEntry /q /Xg /f "%TEMP%\printer_check" /n"%PRINT_SERVER%\%PRINTER3%" >nul
if /i not exist "%TEMP%\printer_check" (
	echo %CUR_DATE% %TIME% "%PRINTER3%" appears to be down, skipping.>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER3%" appears to be down, skipping.
) else ( 
	echo %CUR_DATE% %TIME% "%PRINTER3%" online, mapping now...>> "%LOGPATH%\%LOGFILE%"
	echo %CUR_DATE% %TIME% "%PRINTER3%" online, mapping now...
	rundll32 printui.dll,PrintUIEntry /q /in /n"%PRINT_SERVER%\%PRINTER3%"
	echo %CUR_DATE% %TIME% Mapped.
)
if exist "%TEMP%\printer_check" del /f /q "%TEMP%\printer_check" >nul


:: Wrap-Up
echo %CUR_DATE% %TIME% Printers mapped.>> "%LOGPATH%\%LOGFILE%"
echo                       Printers mapped, have a nice day!
echo                       Please contact the S-6 if you have any questions.
echo                       This window will close in 3 seconds.
ping -n 5 localhost >nul
