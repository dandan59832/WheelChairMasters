@echo off

::EDIT THIS PATH
set GAMEROOT="D:\godot\projects\WWDecomp"

REM powershell.exe -NoProfile -Command "Compress-Archive -Path '%sourceFolder%' -DestinationPath '%zipFile%' -Force"

::init a mod folder in case it doesnt exist
if not exist "%GAMEROOT%\mods" mkdir "%GAMEROOT%\mods"

set "handle=wankers-wheelchairwankers"

::prep paths for zipping and copying
set "from=%CD%\mods-unpacked"
set "to=%GAMEROOT%\mods\%handle%-0.0.1.zip"

::delete existing zip
if exist "%to%" DEL "%to%"

::zip and finish
powershell.exe -NoProfile -Command "Compress-Archive -Path '%from%' -DestinationPath '%to%' -Force"