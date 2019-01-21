# using proxy to wget file
wget {url} -e use_proxy=yes -e http_proxy={ip}:{port} -e https_proxy={ip}:{port}

# add service for firewalld
firewall-cmd --add-service=dhcp --permanent
firewall-cmd --reload

# add port forwarding
iptables -t nat -A PREROUTING  -p tcp -d 1.1.1.1 --dport 80 -j DNAT --to-destination 2.2.2.2:8080
iptables -t nat -A POSTROUTING -p tcp -s 2.2.2.2 --sport 8080 -j SNAT --to-source 1.1.1.1
service iptables save
