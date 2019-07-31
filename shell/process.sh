# check which process occupy the network port
netstat -nap | grep {port_number}

# check single process cpu and memory
ps -p {pid} %cpu,%mem,cmd
