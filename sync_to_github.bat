@echo off
title Syncing Belgian Waffle CCTV Dashboard to GitHub
set GIT_EXE="C:\Users\cr\AppData\Local\Programs\Git\cmd\git.exe"
cd /d "C:\Users\cr\.gemini\antigravity\scratch\belgian-waffle-cctv-dashboard"

echo ========================================================
echo  The Belgian Waffle Co. - GitHub Sync
echo  Repository: https://github.com/faiz0098/Live-CCTV-Sheet.git
echo ========================================================
echo.

%GIT_EXE% remote remove origin 2>nul
%GIT_EXE% remote add origin https://github.com/faiz0098/Live-CCTV-Sheet.git
%GIT_EXE% branch -M main
%GIT_EXE% add .
%GIT_EXE% commit -m "Update Belgian Waffle CCTV Maintenance Dashboard" 2>nul

echo Pushing latest dashboard to GitHub...
echo (If browser opens, click 'Sign in with your browser' to authorize GitHub)
echo.
%GIT_EXE% push -u origin main

echo.
echo ========================================================
echo  Sync process completed!
echo ========================================================
pause
