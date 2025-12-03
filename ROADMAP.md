# Tron Standalone Scripts Roadmap

This roadmap outlines development goals for the Tron Standalone Scripts repository, a curated collection of battle-tested system administration utilities for Windows environments.

## Current State

The repository contains **60+ production-ready scripts** covering deployment, maintenance, cleanup, utilities, monitoring, and Active Directory administration. Scripts are organized across multiple subdirectories (`legacy/`, `librenms/`, `registry/`) with comprehensive documentation.

---

## Short-Term Goals (Q1-Q2 2025)

### 📚 Documentation Enhancements
**Priority: High**

- [ ] Create individual README files for `legacy/`, `librenms/`, and `registry/` subdirectories
- [ ] Add animated GIF demos for commonly used scripts
- [ ] Create quick-start guide for sysadmins new to the collection
- [ ] Document dependencies more clearly (e.g., pstools, 7-Zip versions)
- [ ] Add troubleshooting section for common issues

### 🧪 Testing & Validation
**Priority: High**

- [ ] Test all scripts on Windows 11
- [ ] Verify PowerShell 7+ compatibility
- [ ] Create compatibility matrix (OS versions vs scripts)
- [ ] Add warnings for deprecated Windows features
- [ ] Test network scripts with modern security policies

### 🐛 Modernization & Updates
**Priority: Medium**

- [ ] Update scripts using deprecated commands (e.g., `net send`)
- [ ] Replace `psexec` with PowerShell remoting where appropriate
- [ ] Update paths for Windows 10/11 changes
- [ ] Modernize Active Directory scripts for current AD versions
- [ ] Remove hardcoded paths, add configuration files

---

## Medium-Term Goals (Q3-Q4 2025)

### 🏗️ Repository Reorganization
**Priority: Medium**

- [ ] Create standardized folder structure:
  - `deployment/` - Deployment scripts
  - `maintenance/` - Cleanup and maintenance
  - `active-directory/` - AD management
  - `networking/` - Network utilities
  - `monitoring/` - Monitoring tools
  - `registry-tweaks/` - Registry modifications
  - `legacy/` - Deprecated/legacy scripts
  - `tools/` - Standalone executables
- [ ] Consolidate duplicate files (e.g., registry files in root + `/registry`)
- [ ] Create index/catalog system for easy script discovery

### 🔐 Security & Safety Enhancements
**Priority: High**

- [ ] Add safety checks before destructive operations
- [ ] Implement `-WhatIf` parameter for PowerShell scripts
- [ ] Create backup mechanisms before registry changes
- [ ] Add confirmation prompts for high-risk scripts
- [ ] Security audit all scripts for best practices
- [ ] Sign PowerShell scripts for execution policy compliance

### 🆕 New Script Additions
**Priority: Medium**

- [ ] Windows 11 specific utilities
- [ ] Cloud integration scripts (Azure AD, M365)
- [ ] Docker/container management scripts
- [ ] Modern authentication (OAuth, MFA) utilities
- [ ] Hyper-V management scripts
- [ ] BitLocker administration tools

### 🎯 Feature Enhancements
**Priority: Medium**

- [ ] Add progress bars to long-running scripts
- [ ] Implement logging to centralized location
- [ ] Create unified configuration system
- [ ] Add email notification capabilities
- [ ] Build GUI wrappers for common scripts (PowerShell + WPF)

---

## Long-Term Goals (2026+)

### 🤖 Automation & Integration
**Priority: Low**

- [ ] Create automation framework for scheduled execution
- [ ] SCCM/Intune deployment packages
- [ ] Integration with monitoring systems (Nagios, PRTG, Zabbix)
- [ ] REST API for remote script execution
- [ ] Ansible/Puppet/Chef modules

### 📦 Package Management
**Priority: Medium**

- [ ] Create PowerShell Gallery module
- [ ] Chocolatey package for installation
- [ ] MSI installer for enterprise deployment
- [ ] Self-updating mechanism
- [ ] Version management system

### 🌐 Cross-Platform Expansion
**Priority: Low**

- [ ] Linux equivalents for applicable scripts
- [ ] macOS versions of common utilities
- [ ] Cross-platform PowerShell Core scripts
- [ ] Docker containerized versions

### 🎓 Education & Community
**Priority: Medium**

- [ ] Create video tutorial series
- [ ] Interactive learning environment
- [ ] Monthly webinars on script usage
- [ ] Community script submission process
- [ ] "Script of the Month" showcase

### 🔬 Advanced Features
**Priority: Low**

- [ ] AI-powered script recommendations
- [ ] Automatic dependency detection
- [ ] Script conflict detection
- [ ] Performance profiling tools
- [ ] Custom script generator/wizard

---

## Ongoing Maintenance

### Script Updates
- ⚡ Update for new Windows releases
- ⚡ Maintenance of whitelists (Tron GUID, Metro apps)
- ⚡ Dependency version updates
- ⚡ Bug fixes from community reports

### Documentation
- ⚡ Keep README current with new scripts
- ⚡ Update compatibility information
- ⚡ Maintain changelog
- ⚡ Improve inline comments

### Community Engagement
- ⚡ Respond to issues and pull requests
- ⚡ Review community contributions
- ⚡ Update based on user feedback
- ⚡ Recognition of contributors

---

## Subdirectory Roadmaps

### Registry Subdirectory
See [registry/ROADMAP.md](registry/ROADMAP.md) for detailed plans including:
- Organization by category (Privacy, UI/UX, Performance, Office, Server)
- Safety enhancements (backup/restore, undo automation)
- Windows 11 specific tweaks
- Testing and validation framework

### LibreNMS Subdirectory
- [ ] Add more alert templates (CPU, memory, bandwidth)
- [ ] Create installation/setup guide
- [ ] Add integration examples with ticketing systems
- [ ] Document custom alert rules

### Legacy Subdirectory
- [ ] Add deprecation timeline for each script
- [ ] Create modern alternatives document
- [ ] Archive unmaintained scripts
- [ ] Keep only historically significant items

---

## Version Milestones

### v2.0 (Target: Q3 2025)
- ✨ Reorganized folder structure
- ✨ Windows 11 compatibility verified
- ✨ Security enhancements implemented
- ✨ Comprehensive testing framework

### v3.0 (Target: Q1 2026)
- ✨ PowerShell Gallery module
- ✨ GUI management interface
- ✨ Cloud integration scripts
- ✨ Automated deployment system

---

## How to Contribute

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

**Areas needing help:**
- **Testing**: Windows 11, Server 2022, PowerShell 7+
- **Documentation**: Screenshots, videos, tutorials
- **Scripts**: New utilities, modernization of existing
- **Validation**: Security audits, best practices review

---

## Related Projects

- [Tron](https://github.com/bmrf/tron) - Automated PC cleanup/disinfection toolkit
- [Tron PowerShell](https://github.com/thookham/tron_PowerShell) - PowerShell-based Tron
- [Upstream Standalone Scripts](https://github.com/bmrf/standalone_scripts) - Original source

---

## Related Documentation

- [README.md](README.md) - Complete script catalog
- [CHANGELOG.md](CHANGELOG.md) - Version history
- [CONTRIBUTING.md](CONTRIBUTING.md) - Contribution guidelines
- [SECURITY.md](SECURITY.md) - Security policy
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) - Community standards

---

<p align="center">
  <sub>🛠️ Battle-tested scripts for Windows system administration</sub><br>
  <sub>Part of the Tron ecosystem</sub>
</p>
