#open file
handle = open('/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/intro/res/t8.shakespeare.txt','r')

#count word frequency
counts = dict()
for line in handle:
    words = line.split()
    for word in words:
        counts[word] = counts.get(word,0)+1

#Find the most common word
bigcount = None
bigword = None

for word,count in counts.items():
    if(bigcount is None or count > bigcount):
        bigword = word
        bigcount = count

#Output
print(bigword,bigcount)