@echo off
title Activate Microsoft Office 2016 (ALL versions) for FREE - MSGuides.com&cls&echo =====================================================================================&echo #Project: Activating Microsoft software products for FREE without additional software&echo =====================================================================================&echo.&echo #Supported products:&echo - Microsoft Office Standard 2016&echo - Microsoft Office Professional Plus 2016&echo.&echo.&(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")&(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")&(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&echo.&echo ============================================================================&echo Activating your Office...&cscript //nologo ospp.vbs /setprt:1688 >nul&cscript //nologo ospp.vbs /unpkey:WFG99 >nul&cscript //nologo ospp.vbs /unpkey:DRTFM >nul&cscript //nologo ospp.vbs /unpkey:BTDRB >nul&cscript //nologo ospp.vbs /unpkey:CPQVG >nul&set i=1&cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul||goto notsupported
:skms
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=kms7.MSGuides.com
if %i% EQU 2 set KMS=e8.us.to
if %i% EQU 3 set KMS=e9.us.to
if %i% GTR 3 goto ato
cscript //nologo ospp.vbs /sethst:%KMS% >nul
:ato
echo ============================================================================&echo.&echo.&cscript //nologo ospp.vbs /act | find /i "successful" && (echo.&echo ============================================================================&echo.&echo #My official blog: MSGuides.com&echo.&echo #How it works: bit.ly/kms-server&echo.&echo #Please feel free to contact me at msguides.com@gmail.com if you have any questions or concerns.&echo.&echo #Please consider supporting this project: donate.msguides.com&echo #Your support is helping me keep my servers running 24/7!&echo.&echo ============================================================================&choice /n /c YN /m "Would you like to visit my blog [Y,N]?" & if errorlevel 2 exit) || (echo The connection to my KMS server failed! Trying to connect to another one... & echo Please wait... & echo. & echo. & set /a i+=1 & goto skms)
explorer "http://MSGuides.com"&goto halt
:notsupported
echo ============================================================================&echo.&echo Sorry, your version is not supported.&echo.&goto halt
:busy
echo ============================================================================&echo.&echo Sorry, the server is busy and can't respond to your request. Please try again.&echo.
:halt
pause >nul
