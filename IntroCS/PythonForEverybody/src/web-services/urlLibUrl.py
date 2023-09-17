import urllib.parse

#O/P : http://satyam.com/json?name=satyam&id=2334CP

parameter = dict()
serviceurl = 'http://satyam.com/json?'
parameter['name'] = 'satyam'
parameter['id'] = '2334CP'

url = serviceurl + urllib.parse.urlencode(parameter) 

print(url)