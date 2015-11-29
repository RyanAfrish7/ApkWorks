@ECHO off
IF (%1)==(-c) (
  GOTO :CASE%2
:CASEd
:CASEdecode
    CALL decode.bat %3
    EXIT /B
:CASEbuild
:CASEb
    CALL build.bat %3 %4 %5
    EXIT /B
:CASEsign
:CASEs
    CALL signapk.bat %3 %4 %5 %6 %7
    EXIT /B
:CASEzipalign
:CASEz
    CALL zipalign.bat %3 %4
    EXIT /B
:CASEversion
:CASEv
:CASEabout
:CASEa
    ECHO ApkWorks v0.5
    ECHO -------------
    ECHO:
    ECHO Developer : ARyan (Afrish Khan S)
    ECHO Thanks to ApkTools v2.2
    ECHO:
)
ELSE (
  ECHO:
  ECHO ApkWorks!
  ECHO ---------
  :DEF_CASE
  ECHO:
  ECHO 1. Decode APK
  ECHO 2. Build APK
  ECHO 3. Sign APK
  ECHO 4. Generate key
  ECHO 5. ZigAlign
  ECHO 6. Exit
  ECHO:

  SET /P i1811=Enter the option: 

  2>NUL GOTO :CASE%i1811%
  IF ERRORLEVEL 1 ECHO invalid_option & GOTO :DEF_CASE

:CASE1
    SET /P apkname=Enter the APK name:
    ECHO:
    ECHO Decoding %apkname%...
    CALL decode.bat %apkname%
    ECHO Done.
    GOTO :DEF_CASE
:CASE2
    SET /P foldername=Enter the folder name:
    CALL build.bat %foldername% -o app.apk
    ECHO Done.
    GOTO :DEF_CASE
:CASE3
    ECHO Signing APK...
    ECHO:
    IF NOT DEFINED jdkpath1811 SET /P jdkpath1811=Enter the JDK path:
    SET /P apkname=Enter the APK name:
    CALL signapk.bat "%jdkpath1811%" "%apkname%" "releasekey.keystore" "release"
    ECHO Done.
    GOTO :DEF_CASE
:CASE4
    ECHO:
    IF NOT DEFINED jdkpath1811 SET /P jdkpath1811=Enter the JDK path:
    CALL genkey.bat "%jdkpath1811%"
    ECHO Done.
    GOTO :DEF_CASE
:CASE5
    ECHO:
    ECHO Zip-aligning app.apk into app-final.bat
    CALL zipalign.bat "app.apk" "app-final.apk"
    GOTO :DEF_CASE
:CASE6
    ECHO Bye.
    EXIT /B
)