
@echo off




:inicio
:asci.ex
type asci.txt



:menu
set /p opcion=Enter the option number:

if %opcion%==1 goto install_stock
if %opcion%==2 goto recoverys
if %opcion%==3 goto clone_screen
if %opcion%==4 goto otg_simulator
if %opcion%==5 goto install_drivers
if %opcion%==6 goto universal_debloater
if %opcion%==7 goto ADB
if %opcion%==c goto system
if %opcion%==8 goto ann
if %opcion%==9 goto :goodbye_baby
if %opcion%==10 goto :hentai_installer
if %opcion%==11 goto :motorola_assistant
if %opcion%==12 goto :phoenix_rom
if %opcion%==13 goto :pai
if %opcion%==14 goto :adb_installer
if %opcion%==15 goto :open_cmd
if %opcion%==16 goto :open_log
goto invalid_option


:open_log
ECHO is for  electimon roms
adb reboot
adb logcat > logcat.txt
goto menu


:install_stock
echo Executing original system installation...
start "" /wait cmd /c "fastboot --set-active=a > nul"
start "" /wait cmd /c "fastboot getvar max-sparse-size > nul"
start "" /wait cmd /c "fastboot oem fb_mode_set > nul"
start "" /wait cmd /c "fastboot flash partition gpt.bin > nul"
start "" /wait cmd /c "fastboot flash bootloader bootloader.img > nul"
start "" /wait cmd /c "fastboot flash vbmeta_a vbmeta.img > nul"
start "" /wait cmd /c "fastboot flash vbmeta_b vbmeta.img > nul"
start "" /wait cmd /c "fastboot flash modem_a NON-HLOS.bin > nul"
start "" /wait cmd /c "fastboot flash modem_b NON-HLOS.bin > nul"
start "" /wait cmd /c "fastboot flash fsg_a fsg.mbn > nul"
start "" /wait cmd /c "fastboot flash fsg_b fsg.mbn > nul"
start "" /wait cmd /c "fastboot erase modemst1 > nul"
start "" /wait cmd /c "fastboot erase modemst2 > nul"
start "" /wait cmd /c "fastboot flash bluetooth_a BTFM.bin > nul"
start "" /wait cmd /c "fastboot flash bluetooth_b BTFM.bin > nul"
start "" /wait cmd /c "fastboot flash dsp_a dspso.bin > nul"
start "" /wait cmd /c "fastboot flash dsp_b dspso.bin > nul"
start "" /wait cmd /c "fastboot flash logo_a logo.bin > nul"
start "" /wait cmd /c "fastboot flash logo_b logo.bin > nul"
start "" /wait cmd /c "fastboot flash boot_a boot.img > nul"
start "" /wait cmd /c "fastboot flash boot_b boot.img > nul"
start "" /wait cmd /c "fastboot flash dtbo_a dtbo.img > nul"
start "" /wait cmd /c "fastboot flash dtbo_b dtbo.img > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.0 > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.1 > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.2 > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.3 > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.4 > nul"
start "" /wait cmd /c "fastboot flash system_a system.img_sparsechunk.5 > nul"
start "" /wait cmd /c "fastboot flash system_b system_b.img_sparsechunk.0 > nul"
start "" /wait cmd /c "fastboot flash system_b system_b.img_sparsechunk.1 > nul"
start "" /wait cmd /c "fastboot flash oem_a oem.img > nul"
start "" /wait cmd /c "fastboot flash oem_b oem_other.img > nul"
start "" /wait cmd /c "fastboot flash vendor_a vendor.img_sparsechunk.0 > nul"
start "" /wait cmd /c "fastboot flash vendor_a vendor.img_sparsechunk.1 > nul"
start "" /wait cmd /c "fastboot flash vendor_b vendor.img_sparsechunk.0 > nul"
start "" /wait cmd /c "fastboot flash vendor_b vendor.img_sparsechunk.1 > nul"
start "" /wait cmd /c "fastboot erase carrier > nul"
start "" /wait cmd /c "fastboot erase userdata > nul"
start "" /wait cmd /c "fastboot erase ddr > nul"
start "" /wait cmd /c "fastboot oem fb_mode_clear > nul"
start "" /wait cmd /c "fastboot reboot > nul"
goto fin

:recoverys
set /p recovery=Enter the recovery option (a or b):
if %recovery%==a goto twrp
if %recovery%==b goto orange

:twrp
start "" /wait cmd /c "fastboot boot twrp.img"
goto menu

:orange
start "" /wait cmd /c "fastboot boot orange.img"
goto menu

:clone_screen
start "" /wait cmd /c "scrcpy"
goto menu

:pai
start "" /wait cmd /c "fastboot flash boot m.img"
goto menu

:otg_simulator
start "" /wait cmd /c "scrcpy --otg"
goto menu

:install_drivers
start "" "%USERPROFILE%\Documents\AT-UTILITY-DOHA\Driivers\MotorolaDeviceManager_2.5.4.exe"
goto menu

:universal_debloater
start "" "%USERPROFILE%\Documents\AT-UTILITY-DOHA\Driivers\uad_gui-windows.exe"
goto menu


:adb_installer
start "" /wait cmd /c "adb install magisk.apk"
 goto menu


:motorola_assistant
start "" "%USERPROFILE%\Documents\AT-UTILITY-DOHA\Driivers\motoso.exe"
goto menu

:ADB
set /p reboot=Choose reboot option (c for bootloader, d for system):
if %reboot%==c goto bootloader
if %reboot%==d goto system

:bootloader
start "" /wait cmd /c "adb reboot bootloader"
goto menu

:system
start "" /wait cmd /c "adb reboot system"
goto menu


:ann
start "" /wait cmd /c "fastboot set_active a"
start "" /wait cmd /c "fastboot flash system ann.img"
start "" /wait cmd /c "fastboot flash vbmeta vbmeta.img"
start "" /wait cmd /c "fastboot --disable-verity flash vbmeta vbmeta.img"
start "" /wait cmd /c "fastboot --disable-verification flash vbmeta vbmeta.img"
start "" /wait cmd /c "fastboot erase userdata"
start "" /wait cmd /c "fastboot reboot"
goto menu

:hentai_installer
start "" /wait cmd /c "fastboot -w"
start "" /wait cmd /c "fastboot update hentai.zip"
goto  menu

:phoenix_rom
echo Executing Phoenix ROM installation...
start "" /wait cmd /c "fastboot -w"
start "" /wait cmd /c "fastboot update phoenix.zip"
goto menu

:invalid_option
echo Invalid option. Please try again.
goto menu

:open_cmd
start "" /wait cmd  :: Open a Command Prompt
goto menu

:goodbye_baby
taskkill /f /im cmd.exe

:fin
echo Process finished.
pause
