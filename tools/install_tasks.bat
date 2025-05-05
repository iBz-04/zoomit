@echo off
set SCRIPTS=%~dp0\..\scripts
schtasks /Create /TN JoinZoomTuesday ^
        /TR "powershell -WindowStyle hidden -File \"%SCRIPTS%\join_zoom.ps1\"" ^
        /SC WEEKLY /D TUE /ST 09:55
echo Task installed.
