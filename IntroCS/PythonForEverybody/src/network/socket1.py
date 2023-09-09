# We will be considering application and transport layer
import socket

url = 'data.pr4e.org'
mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect((url,80))
cmd = 'GET http://data.pr4e.org/intro-short.txt HTTP/1.0\r\n\r\n'.encode()
mysock.send(cmd)

while True:
    data = mysock.recv(512) #recieve 512 bytes at a time
    if(len(data) < 1): #if no data remaining 0 bytes
        break
    print(data.decode())

mysock.close()