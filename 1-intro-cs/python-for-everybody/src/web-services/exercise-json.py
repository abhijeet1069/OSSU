import json
import ssl
import urllib.request


url = 'http://py4e-data.dr-chuck.net/comments_1884246.json'
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
response = urllib.request.urlopen(url, context=ctx).read()

data = json.loads(response)
commentList = data['comments']
#print(commentList)

sum = 0
count = 0
for comment in commentList:
    try:
        temp = int(comment['count'])
    except:
        temp = 0
    sum += temp
    count += 1

print('Sum: ',sum)
print('Count: ',count)