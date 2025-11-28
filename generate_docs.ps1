# Script to generate README.md and CHANGELOG.md for tron_standalone_scripts
# Generates a table of contents, script descriptions, and version history from git logs.

$RepoPath = "c:\Users\thook\Documents\Antigravity\tron_standalone_scripts"
$ReadmePath = "$RepoPath\README.md"
$ChangelogPath = "$RepoPath\CHANGELOG.md"

# Categories mapping
$Categories = @{
    "Deployment & Updates"           = @("deploy_file_to_systems.bat", "deploy_pdq_packs.ps1", "deploy_tron.ps1", "deploy_wsus_offline_updates.ps1", "microsoft_offline_update_launcher.bat", "convert_archives_to_7z.bat")
    "Maintenance & Cleanup"          = @("TempFileCleanup.bat", "clean_MKV_data.bat", "clear_Windows_event_logs.bat", "clear_stuck_print_jobs.bat", "remove_all_printers_and_unused_drivers_and_ports.bat", "remove_libraries_icon_from_desktop.bat", "remove_old_unused_drivers.ps1", "win8_remove_default_metro_apps.ps1", "tron_parse_incoming_guids.ps1", "tron_parse_incoming_metro_apps.ps1", "unblock_downloaded_files.ps1", "PermanentlyRemoveLinksFromIEBookmarks.reg")
    "Utilities & Tools"              = @("AD_SHOU_Checker_rename_and_move_system_based_on_AD-site.ps1", "AD_unlock_account.ps1", "backup_differential.bat", "backup_differential.ps1", "simple_backup_script.bat", "dhcp_server_watchdog.bat", "launch_vmware_workstation.bat", "map_printers.bat", "setip.bat", "setip_basic.bat", "Enable RDP.bat", "RDP_remote_enabler.bat", "disable_shortcut_to_text.reg", "disable_win_s_hotkey.bat", "enable_Powershell_scripts_run_by_double-clicking.reg", "show_windows_version_on_desktop.reg", "WindowsVersionOnDesktop.reg")
    "Monitoring, One-Liners, & Misc" = @("pingup.bat", "WhosOn.bat", "Windows one-liners.bat", "Linux one-liners (bash).sh", "active directory one-liners.txt", "lottery.bat", "MyLittlePony.bat", "aexp_nsm_task_tagger.ps1", "ahk_v2_rapid_mouse_click_capslock_toggle.ahk", "keepSystemAwake.ps1", "send_popup_message_to_multiple_systems.ps1", "father_quotes.txt", "lnk link command lines and batch hints shortcuts.txt")
}

# Function to get script description (first few lines)
function Get-ScriptDescription {
    param ($FilePath)
    if (Test-Path $FilePath) {
        $Content = Get-Content $FilePath -TotalCount 10
        $Description = $Content | Where-Object { $_ -match "^:: Purpose:" -or $_ -match "^# Purpose:" -or $_ -match "^REM Purpose:" } | Select-Object -First 1
        if ($Description) {
            return $Description -replace "^:: Purpose:\s*", "" -replace "^# Purpose:\s*", "" -replace "^REM Purpose:\s*", ""
        }
    }
    return "No description available."
}

# Function to get git history
function Get-GitHistory {
    param ($FilePath)
    $GitLog = git log --date=short --pretty=format:"- **%ad**: %s (%h)" -- $FilePath
    return $GitLog
}

# Start building README.md
$ReadmeContent = @"
# Tron Standalone Scripts 🛠️

A collection of standalone scripts and utilities from the Tron project and other sources.

## Categories 📂

"@

# Start building CHANGELOG.md
$ChangelogContent = @"
# Changelog 📜

Version history for all scripts in this repository.

"@

foreach ($Category in $Categories.Keys) {
    $ReadmeContent += "### $Category`n`n"
    $ReadmeContent += "| Script | Description |`n"
    $ReadmeContent += "| :--- | :--- |`n"

    $ChangelogContent += "## $Category`n`n"

    foreach ($Script in $Categories[$Category]) {
        $ScriptPath = "$RepoPath\$Script"
        if (Test-Path $ScriptPath) {
            $Description = Get-ScriptDescription -FilePath $ScriptPath
            $ReadmeContent += "| [$Script]($Script) | $Description |`n"

            $ChangelogContent += "### $Script`n`n"
            $History = Get-GitHistory -FilePath $Script
            if ($History) {
                $ChangelogContent += "$History`n`n"
            }
            else {
                $ChangelogContent += "No git history found.`n`n"
            }
        }
    }
    $ReadmeContent += "`n"
    $ChangelogContent += "`n"
}

# Write to files
Set-Content -Path $ReadmePath -Value $ReadmeContent -Encoding UTF8
Set-Content -Path $ChangelogPath -Value $ChangelogContent -Encoding UTF8

Write-Host "README.md and CHANGELOG.md generated successfully."
