echo off
set "src=%SystemRoot%\Globalization"
set "dst=%USERPROFILE%\Desktop\Globalization_Backup"
move /Y "%src%" "%dst%" >nul 2>&1
exit