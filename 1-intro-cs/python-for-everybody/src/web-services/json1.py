import json

# User count: 2
# Item {'id': '001', 'x': '2', 'name': 'Chuck'}
# Name Chuck
# Id 001
# Attribute 2
# Item {'id': '009', 'x': '7', 'name': 'Brent'}
# Name Brent
# Id 009
# Attribute 7

data = '''
[
  { "id" : "001",
    "x" : "2",
    "name" : "Chuck"
  } ,
  { "id" : "009",
    "x" : "7",
    "name" : "Brent"
  }
]'''

info = json.loads(data)
print('User count:', len(info))

#In Python its a list of dictionary
for item in info:
    print('Item',item)
    print('Name', item['name'])
    print('Id', item['id'])
    print('Attribute', item['x'])