@echo off
IF ("%~5")==("") (
  "%~1\bin\jarsigner.exe" -sigalg SHA1withRSA -digestalg SHA1 -keystore "%~3" "%~2" %4
) ELSE (
  "%~1\bin\jarsigner.exe" -sigalg SHA1withRSA -digestalg SHA1 -keystore "%~3" -storepass "%~5" -keypass "%~5" "%~2" %4
)