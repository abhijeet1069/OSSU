
from urllib.request import urlopen
from bs4 import BeautifulSoup
import ssl

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

url = input('Enter - ')
#url = 'http://py4e-data.dr-chuck.net/comments_1884243.html'
html = urlopen(url, context=ctx).read()
soup = BeautifulSoup(html, "html.parser")

# Retrieve all of the span text tags
# <tr><td>Kathrina</td><td><span class="comments">100</span></td></tr>
# <tr><td>Cheyanna</td><td><span class="comments">99</span></td></tr>

count = 0
sum = 0
tags = soup('span')
for tag in tags:
    try:
        sum += int(tag.text)
    except:
        continue
    count+=1

print('Count',count)
print('Sum',sum)