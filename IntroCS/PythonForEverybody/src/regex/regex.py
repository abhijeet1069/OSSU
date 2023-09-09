# # Regular expressions:
# ^        Matches the beginning of a line
# $        Matches the end of the line
# .        Matches any character
# \s       Matches whitespace
# \S       Matches any non-whitespace character
# *        Repeats a character zero or more times
# *?       Repeats a character zero or more times (non-greedy : prefer shorter of the string)
# +        Repeats a character one or more times
# +?       Repeats a character one or more times (non-greedy : prefer shorter of the string)
# [aeiou]  Matches a single character in the listed set
# [^XYZ]   Matches a single character not in the listed set
# [a-z0-9] The set of characters can include a range
# (        Indicates where string extraction is to start
# )        Indicates where string extraction is to end

import re

hand = open('/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/intro/res/mbox-short.txt','r')

#match lines starting with From
def match():
    for line in hand:
        line = line.rstrip()
        if re.search('^From:',line): # ^ indicates line start with From:
            print(line)

# Extract numbers out of the string
def extract1():
    x = 'My 2 favorite numbers are 19 and 42'
    y = re.findall('[0-9]+',x)
    print(y)

# Extract email address with lines starting From
def extract2():
    serial = 1
    for line in hand:
        list = re.findall('^From (\S+@\S+)',line) #parenthesis returns only the mail address and not From
        if(len(list) > 0): #remove lines that have no match
            print(serial,list)
            serial+=1

#extract hostname in lines
def extract3():
    serial = 1
    for line in hand:
        list = re.findall('@([^ ]*)',line) #after @ match zero or more non-whitespace symbols.Also, give me only host names and not @
        if(len(list) > 0): #remove lines that have no match
            print(serial,list)
            serial+=1

extract3()