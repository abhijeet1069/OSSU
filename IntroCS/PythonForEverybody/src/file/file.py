# Use the file name mbox-short.txt as the file name
#fname = input("Enter file name: ")

#fname = '/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/intro/res/mbox-short.txt'
fname = input('File? ')
try:
    fh = open(fname)
except:
    print("File not found!!")
    quit()

dict = dict()

for line in fh:
    if(line.startswith('From')):
        word = line.split()
        if(len(word) >= 5):
            time = word[5]
            for hour in time.split()[0]:
                dict[hour] = dict.get(hour,0)+1

print(dict)

# maxVal = -1
# maxKey = None
# for k in dict:
#     print(k)