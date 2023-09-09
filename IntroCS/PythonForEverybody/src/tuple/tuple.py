# tuples are similar to lists except they are immutable
# Things not to do with tuples : sort(), append(), reverse()
# Tuples are comparable:
#   (0, 1, 20000) < (0, 3, 4)    //True

def sortListOfTuples():
    d = {'a':10, 'e':1, 'd':22, 'c':22}
    sorted(d.keys())
    print(d)

sortListOfTuples()