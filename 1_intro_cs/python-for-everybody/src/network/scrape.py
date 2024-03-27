# Dependencies
# pip3 install beautifulsoup4
# pip3 install lxml
# pip3 install html5lib
# pip3 install requests
#
#

from bs4 import BeautifulSoup
import requests

with open('/Users/satyam/Personal/OSSU/IntroCS/PythonForEverybody/res/simple.html') as html_file:
    soup = BeautifulSoup(html_file,'lxml')

match = soup.title.text
print(match)