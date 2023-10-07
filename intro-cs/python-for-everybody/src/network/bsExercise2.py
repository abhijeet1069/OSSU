# web scraping. Will look to it later. Different kind of skill.

import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

def open(url):
    ctx = ssl.create_default_context()
    ctx.check_hostname = False
    ctx.verify_mode = ssl.CERT_NONE
    html = urllib.request.urlopen(url, context=ctx).read()
    soup = BeautifulSoup(html, 'html.parser')
    return soup   

def returnURL(url,count):
# Retrieve all of the anchor tags
    page = open(url)
    tags = page('a')
    temp = 1
    for tag in tags:
        if temp == count:
            return tag.get('href', None)
        temp+=1

url = input('Enter URL: ')
count = int(input('Enter count: '))
position = int(input('Enter position: '))
# url = 'http://py4e-data.dr-chuck.net/known_by_Kain.html'
# count = 7
# position = 18

for i in range(0,count+1):
    print('Retrieving: ',url)
    url = returnURL(url,position)