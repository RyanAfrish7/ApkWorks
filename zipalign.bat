@echo off
ECHO:
ECHO Zip-aligning %1 
zipalign 4 "%~1" app-final.apk