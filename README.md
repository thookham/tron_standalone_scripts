# Tron Standalone Scripts

A collection of standalone scripts and utilities used in or related to the Tron project.

For version history and changelogs, please see [CHANGELOG.md](CHANGELOG.md).

## 📂 Table of Contents
- [🚀 Deployment & Updates](#-Deployment-Updates)
- [🛠️ Maintenance & Cleanup](#-Maintenance-Cleanup)
- [🔧 Utilities & Tools](#-Utilities-Tools)
- [📊 Monitoring & Logging](#-Monitoring-Logging)
- [📝 One-Liners & Reference](#-OneLiners-Reference)
- [🎲 Fun & Misc](#-Fun-Misc)

---

## 🚀 Deployment & Updates

### 📄 [convert_archives_to_7z.bat](convert_archives_to_7z.bat)
**Description:** Recursively converts .zip and .rar archives to .7z format.

### 📄 [deploy_file_to_systems.bat](deploy_file_to_systems.bat)
**Description:** Deploys a specified file to a list of remote systems.

### 📄 [deploy_pdq_packs.ps1](deploy_pdq_packs.ps1)
**Description:** Automates the creation and deployment of PDQ packs, including hashing and signing.

### 📄 [deploy_tron.ps1](deploy_tron.ps1)
**Description:** Automates the packaging and deployment of the Tron script.

### 📄 [deploy_wsus_offline_updates.ps1](deploy_wsus_offline_updates.ps1)
**Description:** Automates the downloading and deployment of WSUS Offline updates.

### 📄 [microsoft_offline_update_launcher.bat](microsoft_offline_update_launcher.bat)
**Description:** Launcher script to install updates from a WSUS Offline repository.

## 🛠️ Maintenance & Cleanup

### 📄 [clean_MKV_data.bat](clean_MKV_data.bat)
**Description:** Removes title metadata from MKV and other media files.

### 📄 [clear_stuck_print_jobs.bat](clear_stuck_print_jobs.bat)
**Description:** Restarts the spooler and clears stuck print jobs.

### 📄 [clear_Windows_event_logs.bat](clear_Windows_event_logs.bat)
**Description:** Clears all Windows event logs.

### 📄 [PermanentlyRemove'Links'FromIEBookmarks.reg](PermanentlyRemove'Links'FromIEBookmarks.reg)
**Description:** Removes the 'Links' folder from Internet Explorer bookmarks.

### 📄 [remove_all_printers_and_unused_drivers_and_ports.bat](remove_all_printers_and_unused_drivers_and_ports.bat)
**Description:** Destructive script to remove ALL printers, drivers, and ports.

### 📄 [remove_libraries_icon_from_desktop.bat](remove_libraries_icon_from_desktop.bat)
**Description:** Removes the 'Libraries' icon from the desktop via registry.

### 📄 [remove_old_unused_drivers.ps1](remove_old_unused_drivers.ps1)
**Description:** Removes old and unused driver versions from the Windows Driver Store.

### 📄 [TempFileCleanup.bat](TempFileCleanup.bat)
**Description:** Comprehensive temporary file cleanup script.

### 📄 [tron_parse_incoming_guids.ps1](tron_parse_incoming_guids.ps1)
**Description:** Helper script to parse GUIDs for Tron's whitelist.

### 📄 [tron_parse_incoming_metro_apps.ps1](tron_parse_incoming_metro_apps.ps1)
**Description:** Helper script to parse Metro apps for Tron's whitelist.

### 📄 [unblock_downloaded_files.ps1](unblock_downloaded_files.ps1)
**Description:** Unblocks files downloaded from the internet (removes Zone.Identifier).

### 📄 [win8_remove_default_metro_apps.ps1](win8_remove_default_metro_apps.ps1)
**Description:** Removes default Metro apps from Windows 8/8.1.

## 🔧 Utilities & Tools

### 📄 [AD_SHOU_Checker_rename_and_move_system_based_on_AD-site.ps1](AD_SHOU_Checker_rename_and_move_system_based_on_AD-site.ps1)
**Description:** Moves and renames a workstation based on its Active Directory site.

### 📄 [AD_unlock_account.ps1](AD_unlock_account.ps1)
**Description:** Unlocks specified Active Directory accounts.

### 📄 [aexp_nsm_task_tagger.ps1](aexp_nsm_task_tagger.ps1)
**Description:** Tags log files with task numbers extracted from filenames.

### 📄 [ahk_v2_rapid_mouse_click_capslock_toggle.ahk](ahk_v2_rapid_mouse_click_capslock_toggle.ahk)
**Description:** AutoHotkey script for rapid mouse clicking toggled by CapsLock.

### 📄 [backup_differential.bat](backup_differential.bat)
**Description:** Rotating differential backup script using 7-Zip (Batch version).

### 📄 [backup_differential.ps1](backup_differential.ps1)
**Description:** Rotating differential backup script using 7-Zip (PowerShell version).

### 📄 [dhcp_server_watchdog.bat](dhcp_server_watchdog.bat)
**Description:** Watchdog script for DHCP server failover and monitoring.

### 📄 [disable_shortcut_to_text.reg](disable_shortcut_to_text.reg)
**Description:** Registry tweak to remove the 'Shortcut to' prefix when creating shortcuts.

### 📄 [disable_win_s_hotkey.bat](disable_win_s_hotkey.bat)
**Description:** Disables the Windows + S hotkey.

### 📄 [disable_win_s_hotkey.reg](disable_win_s_hotkey.reg)
**Description:** Registry file to disable the Windows + S hotkey.

### 📄 [Enable RDP.bat](Enable RDP.bat)
**Description:** Enables Remote Desktop Protocol (RDP) on the local machine.

### 📄 [enable_Powershell_scripts_run_by_double-clicking.reg](enable_Powershell_scripts_run_by_double-clicking.reg)
**Description:** Registry tweak to allow running PowerShell scripts by double-clicking.

### 📄 [keepSystemAwake.ps1](keepSystemAwake.ps1)
**Description:** Keeps the system awake by simulating key presses.

### 📄 [launch_vmware_workstation.bat](launch_vmware_workstation.bat)
**Description:** Optimizes services and launches VMware Workstation.

### 📄 [map_printers.bat](map_printers.bat)
**Description:** Maps network printers based on configuration.

### 📄 [RDP_remote_enabler.bat](RDP_remote_enabler.bat)
**Description:** Enables Remote Desktop Protocol (RDP) on a remote machine.

### 📄 [send_popup_message_to_multiple_systems.ps1](send_popup_message_to_multiple_systems.ps1)
**Description:** Sends a popup message to multiple remote systems.

### 📄 [setip_basic.bat](setip_basic.bat)
**Description:** Basic version of the IP configuration script.

### 📄 [setip.bat](setip.bat)
**Description:** Interactive script to set static or dynamic IP addresses.

### 📄 [show_windows_version_on_desktop.reg](show_windows_version_on_desktop.reg)
**Description:** Registry tweak to display the Windows version on the desktop.

### 📄 [simple_backup_script.bat](simple_backup_script.bat)
**Description:** A simple, basic backup script.

### 📄 [WindowsVersionOnDesktop.reg](WindowsVersionOnDesktop.reg)
**Description:** Registry tweak to display the Windows version on the desktop (Alternative).

## 📊 Monitoring & Logging

### 📄 [pingup.bat](pingup.bat)
**Description:** Continuous ping monitor with visual status indicators.

### 📄 [WhosOn.bat](WhosOn.bat)
**Description:** Checks which user is currently logged on to a remote system.

## 📝 One-Liners & Reference

### 📄 [active directory one-liners.txt](active directory one-liners.txt)
**Description:** Collection of useful Active Directory command-line snippets.

### 📄 [father_quotes.txt](father_quotes.txt)
**Description:** A collection of quotes.

### 📄 [Linux one-liners (bash).sh](Linux one-liners (bash).sh)
**Description:** Collection of useful Bash one-liners.

### 📄 [lnk link command lines and batch hints shortcuts.txt](lnk link command lines and batch hints shortcuts.txt)
**Description:** Reference for shortcut command lines and batch hints.

### 📄 [Windows one-liners.bat](Windows one-liners.bat)
**Description:** Collection of useful Windows Batch and PowerShell one-liners.

## 🎲 Fun & Misc

### 📄 [lottery.bat](lottery.bat)
**Description:** A simple lottery simulation script.

### 📄 [MyLittlePony.bat](MyLittlePony.bat)
**Description:** Prank script that launches My Little Pony content.

