fname = '/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/intro/res/sonnet.txt'
#fname = input('File? ')
try:
    fh = open(fname)
except:
    print("File not found!!")
    quit()

list = []
counts = dict()

for line in fh:
    words = line.split()
    for word in words:
        list.append(word.strip().lower())

for word in list:
    counts[word] = counts.get(word,0)+1

# counts.keys() , counts.values()
for key,value in counts.items():
    print(key,":",value)