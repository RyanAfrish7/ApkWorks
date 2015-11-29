# ApkWorks
An assisting windows batch script to work with the apktool. It can be used with decoding, building, and signing an apk using the generated apk.

The apktool is available on the GitHub as an Open Source project at http://ibotpeaches.github.io/Apktool/

## Usage
1. Just open the apkworks.bat
2. Choose the required mode
   * Decode
   * Build
   * Sign
   * Generate key
   * ZipAlign
3. Signing and Key-generation requires *Java JDK*
4. During the latter two modes, the tool will ask you for JDK path
5. The rest is as easy as choosing an option
6. The rebuild app is saved as app.apk
7. The Zip-Aligned app is saved as app-final.apk

## Documentation
###Decoding
`apktool -c decode "apkname.apk" [-o "outputfolder"]`
or
`apktool -c d "apkname.apk" [-o "outputfolder"]`

###Building
`apktool -c build "appfolder" -o appname.apk`
or
`apktool -c b "appfolder" -o appname.apk`

###Signing
`apktool -c sign "apkname.apk" "my-release.keystore" aliasname Password`
or
`apktool -c s "apkname.apk" "my-release.keystore" aliasname Password`

###ZipAligning
`apktool -c zipalign "app.apk" "zipaligned-app.apk"`

## News
### November 11, 2015
* Zip Align added

### November 29, 2015
* Command line support added