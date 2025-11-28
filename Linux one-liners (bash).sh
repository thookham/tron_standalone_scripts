# Purpose: A collection of useful Linux/Bash one-liners for system administration, monitoring, and networking.
# Usage: Copy and paste specific commands as needed. Do not run this file as a script.
#
# Search all files for a text string, starting at root, and only display the file name, not the contents
# Useful for finding files containing specific configuration or code snippets.
grep -Ril "text-to-find-here" /
grep -r "string to be searched" /

# rdesktop to a system with compression (z), bitmap caching (P), in low-bandwidth mode (-x m), with remote sound played through remote speakers
# Note: rdesktop is an older client. 'xfreerdp' is the modern alternative.
# Modern equivalent: xfreerdp /v:example.com /u:username /p:password /sound:sys:alsa
rdesktop example.com:3389 -g 1450x1250 -z -r sound:remote -x m -P -p <PASSWORD>

# Update all expired apt keys (Debian/Ubuntu legacy)
# Note: apt-key is deprecated. Modern systems use signed keyrings in /etc/apt/trusted.gpg.d/
# This command attempts to refresh keys from keys.gnupg.net.
for K in $(apt-key list | grep expired | cut -d'/' -f2 | cut -d' ' -f1); do sudo apt-key adv --recv-keys --keyserver keys.gnupg.net $K; done

# Matrix text scrolling effect in the terminal
# A fun visual effect that mimics the "digital rain" from The Matrix.
echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|awk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'

# Calculate cost of lines of code in a directory
# Requires 'sloccount' package. Estimates development effort and cost.
sloccount ./

# List all services/daemons that run at startup
# Legacy (SysVinit):
/sbin/chkconfig --list |grep '3:on'
# Modern (systemd):
systemctl list-unit-files --type=service | grep enabled

# Release and renew IP addresses
# Legacy (dhclient):
dhclient -r
dhclient 
# Modern (ip command - usually handled by NetworkManager or systemd-networkd, but manual flush):
# ip addr flush dev eth0 && dhclient eth0

# Determine if system is 32 or 64 bits
# Checks CPU flags for 'lm' (Long Mode).
cat /proc/cpuinfo | grep -Gq "flags.* lm " && echo '64bit' || echo '32bit'

# Get release version
# Checks various release files to identify the distribution.
cat /etc/os-release # Universal modern standard
cat /etc/release 2>/dev/null # Red Hat/CentOS legacy
cat /etc/issue   2>/dev/null # Debian/Ubuntu legacy

# Monitor disk i/o
# Requires 'sysstat' package. Displays CPU and I/O statistics.
iostat -x 1

# Disk usage summary by directory
# -c: produce a grand total, -h: human readable, -s: summarize
du -chs /*

# Disk usage summary by directory, alternate methods
# Find directories larger than 1GB:
du -h / | grep '[0-9\.]\+G'
du -h / | grep '^\s*[0-9\.]\+G'
# Interactive disk usage analyzer (requires 'ncdu' package):
du -ch -d 1 | sort -hr

# Find average size of all files on the entire drive (/)
# Scans all files, calculates total size and count, then computes average.
find / -type f -print0 | xargs -0 ls -l | gawk '{sum += $5; n++;} END {print "Total Size: " sum/1024/1024 " MB : Avg Size: " sum/n/1024 " KB : Total Files: " n ;}'

# Kill all processes whose name contains a specific string
# Example: kills all processes matching "minion"
# Safer alternative: pkill -f "minion"
kill `ps -A|awk '/minion/{print $1}'`

# Verify no non-root users have UID 0 (root)
# Security check: UID 0 is reserved for root. Any other user with UID 0 has root privileges.
awk -F: '($3 == "0") {print}' /etc/passwd

# Follow a log file in real-time
# 'tail -f' keeps the file open and prints new lines as they are added.
tail -f /var/log/syslog   # Ubuntu/Debian standard system log
tail -f /var/log/messages # RHEL/CentOS standard system log
tail -f /var/log/apache2/access.log # Apache on Debian/Ubuntu
tail -f /var/log/httpd/access_log   # Apache on RHEL/CentOS

# Useful tools for watching NIC traffic/throughput
# vnstat: console-based network traffic monitor
vnstat -l -i eth1
# iptraf: Interactive Color IP LAN Monitor
iptraf
# iptraf-ng: Next Gen version of iptraf
iptraf-ng
# ntop: Web-based traffic monitor (usually runs on port 3000)
ntop
# Modern alternative: iftop, nethogs

# Add static route for a specific host
# Legacy (net-tools):
route add -host 192.168.1.83 gw 172.16.1.1
# Modern (iproute2):
ip route add 192.168.1.83 via 172.16.1.1
ip route add 192.168.1.83 dev eth2

# Add static route for a specific subnet
# Legacy:
route add -net 192.168.1.0/24 gw 172.16.1.1
# Modern:
ip route add 192.168.1.0/24 via 172.16.1.1

# Add static route for a specific subnet with metric
# Legacy:
route add -net 192.168.1.0/24 gw 172.16.1.1 3
# Modern:
ip route add 192.168.1.0/24 via 172.16.1.1 metric 3

# RHEL/CentOS: Show all installed packages and the date of last update
# Uses rpm query format to list packages by install time.
rpm -qa --qf '%{INSTALLTIME} %-40{NAME} %{INSTALLTIME:date}\n' | sort -n | cut -d' ' -f2-

# Debian/Ubuntu: Show installed packages
dpkg-query -W -f='${Package} ${Version}\n'

