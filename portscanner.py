#!/bin/python3

import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.settimeout(1)

host = input("Please enter the IP you wish to scan: ")
port = int(input("Please enter the port you wish to scan: "))

def portScanner(port):
    if s.connect_ex((host, port)):
        print("Port {} is closed".format(port))
    else:
        print("Port {} is open".format(port))

portScanner(port)
