@ECHO OFF

REM - Build an updated resource file for PhotoPaint.exe
cd /D "%~dp0"
start "title" /wait "GoRC.exe" /r PD_Icons.rc
