# This is An Unofficial shell Script to Restart openVas Services
# By Spectre OVERRRIDE
echo "Restarting OpenVas Services"
service greenbone-security-assistant stop
service openvas-scanner stop
service openvas-manager stop
service greenbone-security-assistant start
service openvas-scanner start
service openvas-manager start