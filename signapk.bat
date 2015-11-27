@echo off
echo Signing APK...
echo:
"%~1\bin\jarsigner.exe" -sigalg SHA1withRSA -digestalg SHA1 -keystore releasekey.keystore "%~2" release