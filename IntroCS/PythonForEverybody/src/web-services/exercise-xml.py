import xml.etree.ElementTree as ET
import urllib.request
import ssl

url = 'http://py4e-data.dr-chuck.net/comments_1884245.xml'
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
response = urllib.request.urlopen(url, context=ctx).read()
#print(response.decode())

tree = ET.fromstring(response)

list = tree.findall('comments')[0]
print('Count:',len(list))
sum = 0
for item in list:
    try:
        temp = int(item.find('count').text)
    except:
        temp = 0
    sum += temp

print('Sum:',sum)