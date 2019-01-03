# using proxy to wget file
wget {url} -e use_proxy=yes -e http_proxy={ip}:{port} -e https_proxy={ip}:{port}

# add service for firewalld
firewall-cmd --add-service=dhcp --permanent
firewall-cmd --reload
