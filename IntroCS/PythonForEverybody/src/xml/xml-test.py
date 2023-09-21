import xml.etree.ElementTree as ET


fname = '/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/res/xml/books.xml'
try:
    fh = open(fname)
except:
    print("File not found!!")
    quit()

tree = ET.parse(fh)
root = tree.getroot()

for child in root:
    print(child.attrib)

fh.close()