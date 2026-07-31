@echo off
title HOWBundle Git Upload

echo.
echo ===============================
echo        HOWBundle Upload
echo ===============================
echo.

git status

echo.
git add .

echo.
set /p msg=Commit message: 

if "%msg%"=="" set msg=Update

git commit -m "%msg%"

if errorlevel 1 (
    echo.
    echo Commit failed or nothing to commit.
    pause
    exit /b
)

echo.
git push

echo.
echo ===============================
echo Upload completed.
echo ===============================
pause