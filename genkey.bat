@echo off
echo:
"%~1\bin\keytool.exe" -genkey -v -keystore releasekey.keystore -alias release -keyalg RSA -keysize 2048 -validity 10000

