@echo off 
del C:\windows\System32\d3dref9.dll
Wmic Process Where Name="GameCenter@Mail.Ru.exe" CALL Terminate
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\HeadsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\ModelsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\Profiles\default\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\QueryCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\"*.xml
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\"*.dds
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\user_"*.cfg
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\HeadsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\ModelsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\Profiles\default\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\QueryCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\"*.xml
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\"*.dds
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\user_"*.cfg
del /f /s /q "C:\Users\%username%\AppData\Local\CrashRpt\"*.*
CLS
set reg_path=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\Warface
set reg_param=InstallLocation
for /f "tokens=1,2,*" %%a in ('reg query "%reg_path%" /v "%reg_param%"') do if "%%a"=="%reg_param%" set reg_value=%%c
echo "%reg_value%"
Del /S /Q "%reg_value%\game.log"
Del /S /Q "%reg_value%\LogBackups\"*.*
set reg_path=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\GameCenterMailRu
set reg_param=InstallLocation
for /f "tokens=1,2,*" %%a in ('reg query "%reg_path%" /v "%reg_param%"') do if "%%a"=="%reg_param%" set reg_value2=%%c
echo "%reg_value2%"
Del /S /Q "%reg_value2%\"*.log
cls
Del /S /Q "%reg_value2%\"*.ini
cls
Del /S /Q "%reg_value2%\Cache\"*.*
cls
Del /S /Q "%reg_value2%\Chrome\Cache\"*.*
cls
Del /S /Q "%reg_value2%\torrents\"*.*
cls
DEL /F /S /Q %WINDIR%\Temp\*.*
cls
DEL /F /S /Q %SYSTEMDRIVE%\Temp\*.*
DEL /F /S /Q %Temp%\*.*
DEL /F /S /Q %Tmp%\*.*
cls
DEL /F /S /Q %WINDIR%\Prefetch\*.*
DEL /F /S /Q /A "%USERPROFILE%\AppData\Local\Temp\*"
CLS
Reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
CLS
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
CLS
del /f /s /q  C:\Users\%username%\AppData\Local\Mail.Ru\GameCenter\GameCenter@Mail.Ru.ini
ipconfig /flushdns
CLS
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Service Pack Cleanup" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Temp Files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v StateFlags0999 /t reg_dword /d 00000002 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v StateFlags0999 /t reg_dword /d 00000002 /f 
CLS
TIMEOUT /T 1 /NOBREAK 
cleanmgr /sagerun:999
Set ProcessName=game.exe
:search
TaskList /FI "ImageName EQ %ProcessName%" | Find /I "%ProcessName%"
If %ErrorLevel%==0 TIMEOUT /T 20 /NOBREAK &&goto :search
Wmic Process Where Name="GameCenter@Mail.Ru.exe" CALL Terminate
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\HeadsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\ModelsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\Profiles\default\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\QueryCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\"*.xml
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\"*.dds
del /f /s /q "C:\Users\%username%\Saved Games\My Games\Warface\user_"*.cfg
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\HeadsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\ModelsCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\Profiles\default\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\QueryCache\"*.*
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\"*.xml
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\"*.dds
del /f /s /q "C:\Users\%username%\Saved Games\My Games\WarfaceWest\user_"*.cfg
del /f /s /q "C:\Users\%username%\AppData\Local\CrashRpt\"*.*
CLS
set reg_path=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\Warface
set reg_param=InstallLocation
for /f "tokens=1,2,*" %%a in ('reg query "%reg_path%" /v "%reg_param%"') do if "%%a"=="%reg_param%" set reg_value=%%c
echo "%reg_value%"
Del /S /Q "%reg_value%\game.log"
Del /S /Q "%reg_value%\LogBackups\"*.*
set reg_path=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\GameCenterMailRu
set reg_param=InstallLocation
for /f "tokens=1,2,*" %%a in ('reg query "%reg_path%" /v "%reg_param%"') do if "%%a"=="%reg_param%" set reg_value2=%%c
echo "%reg_value2%"
Del /S /Q "%reg_value2%\"*.log
cls
Del /S /Q "%reg_value2%\"*.ini
cls
Del /S /Q "%reg_value2%\Cache\"*.*
cls
Del /S /Q "%reg_value2%\Chrome\Cache\"*.*
cls
Del /S /Q "%reg_value2%\torrents\"*.*
cls
DEL /F /S /Q %WINDIR%\Temp\*.*
cls
DEL /F /S /Q %SYSTEMDRIVE%\Temp\*.*
DEL /F /S /Q %Temp%\*.*
DEL /F /S /Q %Tmp%\*.*
cls
DEL /F /S /Q %WINDIR%\Prefetch\*.*
DEL /F /S /Q /A "%USERPROFILE%\AppData\Local\Temp\*"
CLS
Reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
Reg delete "HKEY_CURRENT_USER\Software\Classes\Wow6432Node\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
CLS
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
CLS
del /f /s /q  C:\Users\%username%\AppData\Local\Mail.Ru\GameCenter\GameCenter@Mail.Ru.ini
CLS
cleanmgr /sagerun:999