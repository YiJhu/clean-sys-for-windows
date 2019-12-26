@echo off
title Windows system cleaner by L.H.

echo  開始清除系統垃圾檔案，使用前請確認您的應用程式是否皆為關閉狀態
echo  power by L.H. https://github.com/YiJhu
echo  my website https://darkkingtw.cf
pause

echo 清除IE暫存檔
pause
taskkill.exe /F /IM iexplore.exe
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
rd /s /q %userprofile%\Local Settings\Temp
del /f /s /q "%userprofile%\recent\*.*"

echo 清除Google Chrome暫存檔
pause
taskkill.exe /F /IM chrome.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Chromium\User Data\Default\Cache\*.*"
del /f /s /q "%userprofile%\Local Settings\Application Data\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*"

echo 清除Firebox暫存檔
pause
taskkill.exe /F /IM firefox.exe
del /f /s /q "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\*.*"

echo 清除Opera暫存檔
pause
taskkill.exe /F /IM Opera.exe
del /f /s /q "%userprofile%\Local Settings\Application Data\Opera\*.*"

echo 清除系統垃圾檔案
pause
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.err 
del /f /s /q %systemdrive%\*.wbk
del /f /s /q %systemdrive%\*.xlk
del /f /s /q %systemdrive%\*.diz
del /f /s /q %systemdrive%\*.dmp 
del /f /s /q %systemdrive%\*.ftg
del /f /s /q %systemdrive%\*.fts 
del /f /s /q %windir%\*.bak
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo 系統垃圾清除完畢!
echo. & pause
exit  