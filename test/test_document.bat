@ECHO OFF
:: A batch file that tests ixml
ECHO.

:start
SET START_DIR="%cd%"
cd /D %~dp0
cd
goto :test

:test

for /r %%i in (*.xml) do ixml-test.exe "%%i"

goto :done

:done
ECHO:
ECHO DONE!
ECHO:
goto :finish

:finish
cd /D %START_DIR%
pause
goto :eof
