@echo off
setlocal

where cl >nul 2>nul
if not errorlevel 1 (
  cl /nologo /W4 /utf-8 /Fe:skator.exe skator.c
  if errorlevel 1 exit /b 1
  exit /b 0
)

where gcc >nul 2>nul
if not errorlevel 1 (
  gcc -Wall -Wextra -std=c11 -finput-charset=UTF-8 -o skator.exe skator.c
  if errorlevel 1 exit /b 1
  exit /b 0
)

echo No supported C compiler was found.
echo Use a Visual Studio Developer Command Prompt or install MinGW-w64/MSYS2.
exit /b 1
