@echo off
title GodsArena Git Upload - GA File

echo.
echo ===============================
echo        GodsArena Upload
echo ===============================
echo.

git status

echo.
git add .

echo.
echo Commit message: GAs File
echo.

git commit -m "GA File"

if errorlevel 1 (
    echo.
    echo Commit failed or nothing to commit.
    echo.
    pause
    exit /b
)

echo.
git push

echo.
echo ===============================
echo Upload completed.
echo ===============================
echo.
pause