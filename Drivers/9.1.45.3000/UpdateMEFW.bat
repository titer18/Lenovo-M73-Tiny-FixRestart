

SET Binfile="%~dp0\ME9.1_5M_Production.bin"
IF "%PROCESSOR_ARCHITECTURE%"=="x86" GOTO Corp_32bit

:Corp_64bit
SET FWUPDTool="%~dp0\FWUpdLcl64.exe"
start /b /wait "" %FWUPDTool% -F %Binfile% -OEMID 4C656E6F-766F-0000-0000-000000000000 -generic -allowsv
GOTO END

:Corp_32bit
SET FWUPDTool="%~dp0\FWUpdLcl.exe"
start /b /wait "" %FWUPDTool% -F %Binfile% -OEMID 4C656E6F-766F-0000-0000-000000000000 -generic -allowsv



:END
echo *****update Finished ******

cmd /k echo.