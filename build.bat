@echo off
call npm install || exit /b 1
if not exist android call npx cap add android || exit /b 1
if not exist android\app\src\main\java\com\examguard\app mkdir android\app\src\main\java\com\examguard\app
copy /Y native\MainActivity.java android\app\src\main\java\com\examguard\app\MainActivity.java
call npx cap sync android || exit /b 1
cd android
call gradlew.bat assembleDebug || exit /b 1
echo SELESAI: android\app\build\outputs\apk\debug\app-debug.apk
