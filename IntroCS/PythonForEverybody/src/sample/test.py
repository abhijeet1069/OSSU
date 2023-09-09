#extract hostname in lines
import re

hand = open('/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/intro/res/sonnet.txt','r')

def extract3():
    serial = 1
    for line in hand:
        list = re.findall('.*',line) 
        if(len(list) > 0): 
            print(serial,list)
            serial+=1

extract3()