# Registry Scripts Roadmap 🗺️

This roadmap outlines the planned improvements and development goals for the `registry` directory of the Tron Standalone Scripts project.

## Overview

The registry directory currently contains 38 Windows registry tweaks and PowerShell scripts. This roadmap aims to transform this collection into a well-organized, safe, and comprehensive library of system customization tools.

## Current State

**Strengths:**
- Diverse collection of useful tweaks across multiple Windows versions
- Covers Office applications, privacy settings, UI customization, and system optimizations
- Some undo scripts already present for certain tweaks

**Challenges:**
- Inconsistent naming conventions
- Mixed organization (flat directory with various categories)
- Missing undo scripts for many tweaks
- Some legacy content that may not apply to modern Windows
- No centralized documentation within the directory itself

---

## Phase 1: Organization & Cleanup 🧹

**Timeline:** Short-term (1-2 months)  
**Priority:** High

### Goals

- **Reorganize into Subdirectories**: Create logical categories for easier navigation
  - `office/` - Microsoft Office tweaks (Excel, Outlook, Visio)
  - `privacy/` - Telemetry, NCSI, and data collection tweaks
  - `windows_10/` - Windows 10 specific customizations
  - `windows_11/` - Windows 11 specific customizations (to be populated)
  - `system/` - General system settings (NumLock, shortcuts, command prompt)
  - `ui_ux/` - User interface and experience tweaks (lock screen, Libraries, wallpaper)
  - `server/` - Windows Server specific tweaks
  - `cross_version/` - Tweaks that work across multiple Windows versions
  - `legacy/` - Obsolete tweaks for Win7/8/Vista

- **Standardize Naming Conventions**: Adopt consistent format
  - Pattern: `category_action_description.reg` or `category_feature_state.reg`
  - Examples: 
    - `privacy_disable_telemetry.reg`
    - `office_excel_open_new_instance.reg`
    - `ui_disable_lock_screen.reg`

- **Remove Duplicates**: Eliminate redundant files
  - Consolidate duplicate scripts (e.g., multiple "disable balloon tips" files)
  - Keep the most comprehensive version

### Deliverables

- [ ] Reorganized directory structure with subdirectories
- [ ] All files renamed following new convention
- [ ] Duplicates identified and removed
- [ ] Legacy files moved to `legacy/` subdirectory

---

## Phase 2: Safety & Reliability 🛡️

**Timeline:** Medium-term (2-4 months)  
**Priority:** Critical

### Goals

- **Universal Undo Scripts**: Ensure every tweak can be reversed
  - Create `_UNDO.reg` files for all tweaks missing them
  - Test undo functionality on clean Windows installations
  - Document any tweaks that cannot be safely undone

- **Windows Version Validation**: Verify compatibility
  - Test all registry keys on Windows 10 (21H2+)
  - Test all registry keys on Windows 11 (22H2+)
  - Mark deprecated keys that no longer exist
  - Update or remove non-functional tweaks

- **Risk Assessment**: Classify tweaks by safety level
  - **Low Risk**: Cosmetic changes (e.g., show version on desktop)
  - **Medium Risk**: Behavior changes (e.g., disable auto-updates)
  - **High Risk**: System stability impact (e.g., disable services)
  - Add risk level to file metadata/documentation

- **PowerShell Wrappers**: Add enhanced safety features
  - Convert high-risk `.reg` files to `.ps1` scripts
  - Implement restore point creation before applying changes
  - Add logging and error handling
  - Provide interactive confirmation for destructive changes

### Deliverables

- [ ] Complete set of undo scripts for all tweaks
- [ ] Compatibility matrix (Windows 10/11 validation report)
- [ ] Risk classification for each tweak
- [ ] PowerShell wrappers for high-risk registry modifications

---

## Phase 3: Documentation & Usability 📚

**Timeline:** Medium-term (3-5 months)  
**Priority:** High

### Goals

- **Registry Directory README**: Create dedicated documentation
  - Overview of available tweaks by category
  - Usage instructions and best practices
  - Safety warnings and recommendations
  - How to use undo scripts
  - Testing recommendations (VMs, restore points)

- **Tweak Manifest**: Generate comprehensive reference
  - Format: `manifest.json` or markdown table
  - Fields: 
    - Name, Description, Category
    - Affected Registry Keys
    - Windows Versions (compatibility)
    - Risk Level
    - Has Undo Script (yes/no)
    - Related Tweaks
  - Could be auto-generated from file headers/metadata

- **Enhanced Script Headers**: Standardize inline documentation
  - Windows Registry Editor Version
  - Purpose and description
  - Affected registry keys list
  - Compatible Windows versions
  - Risk level and warnings
  - Author/source attribution
  - Last tested date

- **Testing Guide**: Document verification procedures
  - Recommended VM setups for testing
  - Verification steps for each tweak
  - Common issues and troubleshooting

### Deliverables

- [ ] `registry/README.md` with comprehensive documentation
- [ ] `manifest.json` or equivalent reference file
- [ ] Standardized headers in all `.reg` files
- [ ] Testing guide for contributors

---

## Phase 4: Expansion & Modernization 🚀

**Timeline:** Long-term (6-12 months)  
**Priority:** Medium

### Goals

- **Windows 11 Support**: Add modern OS tweaks
  - Disable Windows 11 widgets
  - Customize new Start Menu and Taskbar
  - Control Windows 11 context menus
  - Disable intrusive features (Recall, Copilot suggestions)
  - Tablet mode and touch optimizations

- **Office 365/2021/2024 Tweaks**: Update for modern Office
  - Disable cloud-based features (optional)
  - Customize ribbon and interface
  - Telemetry and data collection controls
  - Autosave and collaboration settings
  - Performance optimizations

- **Privacy & Security Focus**: Expand privacy controls
  - Enhanced telemetry blocking
  - Microsoft account restrictions
  - App permissions management
  - Network privacy (DNS-over-HTTPS, etc.)
  - Biometric and camera controls

- **Performance Optimization**: New performance tweaks
  - Gaming optimizations (disable Game Bar, DVR)
  - SSD/NVMe optimizations
  - Memory and paging file tweaks
  - Visual effects vs. performance balance

- **Interactive Management Tool**: Create GUI or TUI utility
  - Browse available tweaks by category
  - Apply/undo tweaks with one click
  - Batch apply common configurations (e.g., "Privacy Hardening")
  - System restore point integration
  - Export/import tweak profiles

### Deliverables

- [ ] 20+ Windows 11 specific tweaks
- [ ] 15+ Office 365/2021/2024 tweaks
- [ ] Enhanced privacy tweak collection
- [ ] Performance optimization pack
- [ ] Optional: Interactive management utility (PowerShell GUI or web-based)

---

## Phase 5: Community & Integration 🤝

**Timeline:** Ongoing  
**Priority:** Low

### Goals

- **Community Contributions**: Encourage external input
  - Clear contribution guidelines for registry tweaks
  - Template for new tweak submissions
  - Peer review process
  - Credit and attribution system

- **Integration with Tron**: Deeper ecosystem integration
  - Export selected tweaks for Tron's configuration stage
  - Shared whitelist/blacklist with Tron project
  - Coordinated testing across projects

- **Automated Testing**: CI/CD for validation
  - Automated syntax validation for `.reg` files
  - VM-based smoke testing
  - Windows version compatibility checks
  - Undo script verification

- **Translation/Localization**: Support international users
  - Document registry value meanings
  - Provide comments in multiple languages (optional)
  - Region-specific tweaks (e.g., EU privacy compliance)

### Deliverables

- [ ] Contribution guide and templates
- [ ] Automated validation pipeline
- [ ] Integration hooks with Tron project
- [ ] Community feedback mechanism

---

## Success Metrics

**By End of Phase 2:**
- 100% of tweaks have undo scripts
- Zero broken/invalid registry keys
- All tweaks tested on current Windows versions

**By End of Phase 3:**
- Complete documentation coverage
- Average user can find and apply tweaks safely within 5 minutes
- Manifest lists all 50+ tweaks with full metadata

**By End of Phase 4:**
- 100+ total tweaks available
- Support for Windows 10, 11, Server 2019/2022
- Modern Office suite fully covered

---

## Contributing

Want to help with this roadmap? See the main repository's [CONTRIBUTING.md](../CONTRIBUTING.md) and [CODE_OF_CONDUCT.md](../CODE_OF_CONDUCT.md).

Priority areas for contribution:
1. Creating undo scripts for existing tweaks
2. Testing registry tweaks on Windows 11
3. Adding Windows 11 specific customizations
4. Improving documentation

---

## Maintenance Notes

- **Review Cycle**: Quarterly review of roadmap progress
- **Windows Update Impact**: After major Windows updates, validate all tweaks
- **Deprecation Policy**: Legacy tweaks marked deprecated after 2 years without use
- **Security**: Monitor for registry tweaks that could introduce vulnerabilities

---

**Last Updated:** 2025-12-01  
**Maintainer:** @thookham  
**Status:** Active Development
