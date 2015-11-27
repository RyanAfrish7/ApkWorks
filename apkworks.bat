@ECHO off
ECHO:
ECHO ApkWorks!
ECHO ---------
:DEF_CASE
ECHO:
ECHO 1. Decode APK
ECHO 2. Build APK
ECHO 3. Sign APK
ECHO 4. Generate key
ECHO 6. Exit
ECHO:

SET /P i1811=Enter the option: 

2>NUL GOTO :CASE%i1811%
IF ERRORLEVEL 1 ECHO invalid_option & GOTO :DEF_CASE

:CASE1
  SET /P apkname=Enter the APK name:
  CALL decode.bat %apkname%
  ECHO Done.
  GOTO :DEF_CASE
:CASE2
  SET /P foldername=Enter the folder name:
  CALL build.bat %foldername% -o app.apk
  ECHO Done.
  GOTO :DEF_CASE
:CASE3
  IF NOT DEFINED jdkpath1811 SET /P jdkpath1811=Enter the JDK path:
  SET /P apkname=Enter the APK name:
  CALL signapk.bat "%jdkpath1811%" "%apkname%"
  ECHO Done.
  GOTO :DEF_CASE
:CASE4
  IF NOT DEFINED jdkpath1811 SET /P jdkpath1811=Enter the JDK path:
  CALL genkey.bat "%jdkpath1811%"
  ECHO Done.
  GOTO :DEF_CASE
:CASE5
  CALL zipalign.bat "app.apk"
  GOTO :DEF_CASE
:CASE6
  ECHO Bye.
  EXIT /B