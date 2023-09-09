#Using UrlLib we don't have to do the socket work
#below code wasn't working because I had a file called socket.py , so yes python does have naming conflicts

import urllib.request, urllib.parse, urllib.error

fhand = urllib.request.urlopen('http://data.pr4e.org/romeo.txt')
for line in fhand:
    print(line.decode().strip())