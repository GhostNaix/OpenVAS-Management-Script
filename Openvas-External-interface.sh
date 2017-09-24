# This is An Unofficial shell Script to configure openVas to listen to external local connections
# By Spectre OVERRRIDE
echo 'Preparing Configuring OpenVas System files to listen on external Connections'
sleep 10
echo 'Stopping OpenVas Services'
service greenbone-security-assistant stop
service openvas-scanner stop
service openvas-manager stop
echo 'Configuring OpenVas System files to listen on external Connections'
cd /lib/systemd/system
sed -e 's/127.0.0.1/0.0.0.0/g' greenbone-security-assistant.service openvas-manager.service openvas-scanner.service -i
systemctl daemon-reload
cd ~
echo "Starting OpenVas Services"
service greenbone-security-assistant start
service openvas-scanner start
service openvas-manager start