# 🛠️ Tron Standalone Scripts

A collection of useful standalone scripts for system administration, maintenance, and deployment.

> [!NOTE]
> This repository has been audited and modernized. Scripts now use parameters for credentials and paths, making them safer and more portable.

## 📂 Contents

### 🚀 Deployment Scripts
Scripts used to deploy Tron and other packages.
- **`deploy_tron.ps1`**: Deploys the Tron script.
- **`deploy_pdq_packs.ps1`**: Deploys PDQ packs.
- **`deploy_wsus_offline_updates.ps1`**: Deploys WSUS Offline updates.

**Usage:**
These scripts now require parameters for sensitive information.
```powershell
.\deploy_tron.ps1 -Repo_FTP_Username "user" -Repo_FTP_Password "pass" -gpgPassphrase "secret"
```

### 💾 Backup & Maintenance
- **`backup_differential.ps1`**: Rotating differential backup script using 7-Zip.
    - Supports Full (`-f`), Differential (`-d`), Restore (`-r`), Archive (`-a`), and Purge (`-p`) operations.
    - **Update**: Restore and Purge functions have been rewritten for better reliability.
- **`remove_old_unused_drivers.ps1`**: Cleans up the Windows driver store.
- **`AD_unlock_account.ps1`**: Unlocks Active Directory accounts.

### 🔧 Utilities
- **`convert_archives_to_7z.bat`**: Converts various archive formats to .7z.
- **`repair_windows_update.bat`**: Attempts to repair broken Windows Update components.
- **`repair_wmi.bat`**: Attempts to repair broken WMI.

## ⚠️ Important Notes
- **Credentials**: Never hardcode credentials in these scripts. Always pass them as parameters.
- **Paths**: Default paths can be overridden using script parameters (e.g., `-Repo_Root "\\newserver\share"`).

---
*Maintained by [Your Name/Organization]*
