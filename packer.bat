@echo off

::EDIT THIS PATH
set GAMEROOT="D:\godot\projects\WWDecomp"

::init a mod folder in case it doesnt exist
if not exist "%GAMEROOT%\mods" mkdir "%GAMEROOT%\mods"

set "handle=wankers-wheelchairwankers"

::prep paths for zipping and copying
set "from=%CD%\mods-unpacked"
set "to=%GAMEROOT%\mods\%handle%-0.0.1.zip"

::delete existing zip
if exist "%to%" DEL "%to%"

:: create copy of manifest.json for zip-level manifest file
copy "%from%\%handle%\manifest.json" "%CD%\manifest.json"
set "zip_manifest=%CD%\manifest.json"

::zip and delete zip-level manifest
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"
"%SEVENZIP%" a -tzip "%to%" "%from%" "%zip_manifest%"
DEL "%zip_manifest%"