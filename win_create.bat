@echo off
SET TARGETMACHINE_1=SEREGA-I3
echo current computer name is %COMPUTERNAME%
echo allow name is %TARGETMACHINE_1%

IF %COMPUTERNAME%==%TARGETMACHINE_1% (goto FoundName) ELSE (goto Error)

:FoundName
git init
git add .
git commit -m 'First commit'
git remote add origin https://github.com/dsserega/treasures
git remote -v
git push -u origin master
Goto End

:Error
echo machine name not found

:End
pause
exit

