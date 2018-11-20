# read or write raw L2 frame from ethernet
import socket
eth_name = "eth0"
ETH_P_ALL = 3
raw_socket = socket.socket(socket.AF_PACKET, socket.SOCK_RAW, ETH_P_ALL)
raw_socket.bind((eth_name, ETH_P_ALL))
while True:
  try:
    packet = raw_socket.recvfrom(65535)
    packet = packet[0]
  except socket.error as msg:
    print "Error occured with interface %s:\n%s" % (eth_name, msg)
