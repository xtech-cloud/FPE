@echo off
set domain=https://upload.xtech.cloud/files/fpe
set fperoot=%cd%
set start_menu_dir="%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\fpe"
IF NOT EXIST %start_menu_dir% MD %start_menu_dir%

setx FPE_ROOT %fperoot%

:menu
cd %fperoot%
cls
echo -----------------------------------------
echo ----          Fast Portable Env
echo ----            version  1.3.1
echo -----------------------------------------

echo 3c.	Install 360Chrome
echo mo.	Install Microsoft Office [2016 x64]
echo ap.	Install Adobe Photoshop [CC]
echo ss.	Install Shadowsocks
echo td.	Install Thunder [1.0.35.366]
echo pp.	Install PotPlayer [1.7.7150]
echo .........................................
echo xm.	Install XMind [7u1]
echo aa.	Install Adobe Audition [CC]
echo ax.	Install Axure [8.0.0.3297]
echo gv.	Install GoldWave [6.21]
echo .........................................
echo vi.	Install Vim [7.4.788]
echo vc.	Install VS Code [1.1]
echo ms.	Install msys2
echo tc.	Install Totalcmd [8.51a]
echo st.	Install SourceTree [2.4.7]
echo ln.	Install LeaNote
echo oc.	Install OwnCloud
echo is.	Install NSIS [3.0.1]
echo .........................................
echo mr.	Install MariaDB [10.2.12]
echo mg.	Install MongoDB [3.6.1]
echo nc.	Install Navicat [9.1.11]
echo rt.	Install Robo3T [1.1.1]
echo .........................................
echo pg.	Install PngGauntlet
echo tp.	Install TexturePacker
echo sf.	Install XShell XFtp [5.0]
echo sy.	Install ILSpy
echo .........................................
echo js.	Install Java SDK [8u121]
echo as.	Install Android SDK [r25]
echo an.	Install Android NDK [r15c]
echo ao.	Install Android Studio [r25]
echo ut.	Install Unity [2018.1.0f1]
echo nj.	Install NodeJS [4.4.3]
echo nx.	Install Nginx [1.11.1]
echo cy.	Install Caddy [0.8.3]
echo mk.	Install CMake [3.6.0]
echo .........................................
echo update. Update the FPE
echo -----------------------------------------
set idx="0"
set /p idx=Enter the index:
if "%idx%"=="3c" goto 360Chrome
if "%idx%"=="mo" goto MicrosoftOffice
if "%idx%"=="mv" goto MicrosoftVisio
if "%idx%"=="mp" goto MicrosoftProject
if "%idx%"=="ap" goto AdobePhotoshop
if "%idx%"=="aa" goto AdobeAudition
if "%idx%"=="pp" goto PotPlayer
if "%idx%"=="vi" goto Vim
if "%idx%"=="vc" goto VSCode
if "%idx%"=="ms" goto msys2
if "%idx%"=="tc" goto Totalcmd
if "%idx%"=="st" goto SourceTree
if "%idx%"=="ss" goto Shadowsocks
if "%idx%"=="sy" goto ILSpy
if "%idx%"=="ln" goto LeaNote
if "%idx%"=="oc" goto OwnCloud
if "%idx%"=="is" goto NSIS
if "%idx%"=="mr" goto MariaDB
if "%idx%"=="mg" goto MongoDB
if "%idx%"=="nc" goto Navicat
if "%idx%"=="rt" goto Robo3T
if "%idx%"=="pg" goto PngGauntlet
if "%idx%"=="tp" goto TexturePacker
if "%idx%"=="sf" goto XshellXftp
if "%idx%"=="gv" goto GoldWave
if "%idx%"=="xm" goto XMind
if "%idx%"=="ax" goto Axure
if "%idx%"=="td" goto Thunder
if "%idx%"=="js" goto JavaSDK
if "%idx%"=="as" goto AndroidSDK
if "%idx%"=="ad" goto AndroidNDK
if "%idx%"=="ao" goto AndroidStudio
if "%idx%"=="qt" goto Qt
if "%idx%"=="ut" goto Unity
if "%idx%"=="cc" goto Cocos
if "%idx%"=="nj" goto NodeJS
if "%idx%"=="nx" goto Nginx
if "%idx%"=="cy" goto Caddy
if "%idx%"=="mk" goto CMake
if "%idx%"=="update" goto Update
goto menu

:MicrosoftOffice
set app=MicrosoftOffice2016X64
call :download_app %app%
call :decompress_app %app%
set exeWord=MicrosoftOffice2016X64\Office16\WINWORD.exe
call :createshortcut Word %exeWord%
set exeExcel=MicrosoftOffice2016X64\Office16\EXCEL.exe
call :createshortcut Excel %exeExcel%
set exePowerPoint=MicrosoftOffice2016X64\Office16\POWERPNT.exe
call :createshortcut PowerPoint %exePowerPoint%
set exeVisio=MicrosoftOffice2016X64\Office16\VISIO.exe
call :createshortcut Visio %exeVisio%
set exeProject=MicrosoftOffice2016X64\Office16\WINPROJ.exe
call :createshortcut Project %exeProject%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :deleteshortcut "Microsoft Word 2016"
call :deleteshortcut "Microsoft Excel 2016"
call :deleteshortcut "Microsoft PowerPoint 2016"
goto menu

:AdobePhotoshop
set app=AdobePhotoshopCC
set exe=AdobePhotoshopCC\Photoshop.exe
call :download_app %app%
call :decompress_app %app%
call :deleteshortcut "Adobe Photoshop CC"
call :createshortcut %app% %exe%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :deleteshortcut "Adobe Photoshop CC"
goto menu

:AdobeAudition
set app=AdobeAuditionCC
set exe=AdobeAuditionCC\Audition.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:Vim
set app=Vim
set exe=Vim\vim74\gvim.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:PotPlayer
set app=PotPlayer3
set exe=PotPlayer3\PotPlayerMini64.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:VSCode
set app=VSCode
set exe=VSCode\code.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:msys
set app=msys
set exe=msys\msys.bat
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:msys2
set app=msys2
set exe=msys2\msys2_shell.bat
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Totalcmd
set app=totalcmd
set exe=totalcmd\TOTALCMD64.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:SourceTree
set app=SourceTree-247
set exe=SourceTree-247\SourceTree.exe
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :createshortcut %app% %exe%
goto menu

:LeaNote
set app=leanote
set exe=leanote\leanote.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:OwnCloud
set app=ownCloud
set exe=ownCloud\owncloud.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:NSIS
set app=NSIS-301
set exe=NSIS-301\NSIS.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu


:Shadowsocks
set app=Shadowsocks
set exe=Shadowsocks\Shadowsocks.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:ILSpy
set app=ILSpy
set exe=ILSpy\ILSpy.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:MariaDB
set app=mariadb
call :download_app %app%
call :decompress_app %app%
goto menu

:MongoDB
set app=mongodb
call :download_app %app%
call :decompress_app %app%
goto menu

:Navicat
set app=Navicat
set exe=Navicat\navicat.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Robo3T
set app=robo3t
set exe=robo3t\robo3t.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:PngGauntlet
set app=PngGauntlet
set exe=PngGauntlet\PngGauntlet.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:TexturePacker
set app=TexturePacker
set exe=TexturePacker\bin\TexturePackerGUI.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:XshellXftp
set app=XshellXftp
call :download_app %app%
call :decompress_app %app%
call :createshortcut XShell XshellXftp\XshellPortable.exe
call :createshortcut XFtp XshellXftp\XftpPortable.exe
goto menu

:360Chrome
set app=360Chrome
set exe=360Chrome\Chrome\Application\360chrome.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:GoldWave
set app=GoldWave
set exe=GoldWave\GoldWave.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:XMind
set app=XMind
set exe=XMind\XMind.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Axure
set app=Axure
set exe=Axure\AxureRP8.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Thunder
set app=Thunder
set exe=Thunder\Program\Thunder.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:JavaSDK
set app=jdk
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:AndroidNDK
set app=android-ndk-r15c
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu

:AndroidSDK
set app=android-sdk-r25
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
goto menu


:AndroidStudio
set app=android-studio
set exe=android-studio\bin\studio64.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Qt
set app=qt-591
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :download_extra %app%
call :decompress_extra %app%
goto menu

:Unity
set app=Unity-20181
set exe=%app%\Editor\Unity.exe
call :download_app %app%
call :decompress_app %app%
call :download_installer %app%
call :decompress_installer %app%
call :install_app %app%
call :download_patcher %app%
call :decompress_patcher %app%
call :patch_app %app%
call :download_extra %app%
call :decompress_extra %app%
call :createshortcut %app% %exe%
goto menu

:NodeJS
set app=nodejs
set exe=nodejs\node.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Nginx
set app=nginx-1111
set exe=nginx-1111\nginx.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Caddy
set app=caddy-083
set exe=caddy-083\caddy.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:CMake
set app=cmake-360
set exe=cmake-360\bin\cmake-gui.exe
call :download_app %app%
call :decompress_app %app%
call :createshortcut %app% %exe%
goto menu

:Update
set app=fpe
call :download_app %app%
call :decompress_app %app%
goto menu


:download_app
cd %fperoot%
echo ### download app ...
set _app=%1
curl -C - -o %_app%.tmp %domain%/%_app%.7z %_app%.tmp -k
move /Y %_app%.tmp %_app%.7z
goto :eof

:download_installer
cd %fperoot%
echo ### download installer ...
set _app=%1
curl -C - -o %_app%_installer.tmp %domain%/%_app%_installer.7z -k
move /Y %_app%_installer.tmp %_app%_installer.7z
goto :eof

:download_patcher
cd %fperoot%
echo ### download patcher ...
set _app=%1
curl -C - -o %_app%_patcher.tmp %domain%/%_app%_patcher.7z -k
move /Y %_app%_patcher.tmp %_app%_patcher.7z
goto :eof

:download_extra
cd %fperoot%
echo ### download extra ...
set _app=%1
curl -C - -o %_app%_extra.tmp %domain%/%_app%_extra.7z -k
move /Y %_app%_extra.tmp %_app%_extra.7z
goto :eof

:decompress_app
cd %fperoot%
echo ### decompress app ...
set _app=%1
rd /Q/S %_app%
7za -y x %_app%.7z
del %_app%.7z
goto :eof

:decompress_installer
cd %fperoot%
echo ### decompress installer ...
set _app=%1
7za -y x %_app%_installer.7z
del %_app%_installer.7z
goto :eof

:decompress_patcher
cd %fperoot%
echo ### decompress patcher ...
set _app=%1
7za -y x %_app%_patcher.7z
del %_app%_patcher.7z
goto :eof

:decompress_extra
cd %fperoot%
echo ### decompress extra ...
set _app=%1
7za -y x %_app%_extra.7z
del %_app%_extra.7z
goto :eof

:deleteshortcut
set _app=%~1
IF EXIST "%UserProfile%\Desktop\%_app%.lnk" DEL /Q "%UserProfile%\Desktop\%_app%.lnk"
IF EXIST "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\%_app%.lnk" DEL /Q "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\%_app%.lnk"
goto :eof

:createshortcut
set _app=%1
set _exe=%2
set URL="%fperoot%\%_exe%"
IF EXIST %URL% Shortcut.exe /F:"%UserProfile%\Desktop\%_app%.lnk" /A:C /T:%URL%>NUL
IF EXIST %URL% Shortcut.exe /F:%start_menu_dir%\%_app%.lnk /A:C /T:%URL%>nul
goto :eof

:install_app
cd %fperoot%
set _app=%1
cd %_app%
call ./install.bat
goto :eof

:patch_app
cd %fperoot%
set _app=%1
cd %_app%
call ./patch.bat
goto :eof
