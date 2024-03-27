# Shell scripting

```zsh
# initializing a variable
satyam@satyam-2 4-cs-tools % name=satyam
satyam@satyam-2 4-cs-tools % echo $satyam

satyam@satyam-2 4-cs-tools % echo $name  
satyam
satyam@satyam-2 4-cs-tools % 

# spaces dont work
satyam@satyam-2 4-cs-tools % name = satyam
zsh: command not found: name

# defining strings
satyam@satyam-2 4-cs-tools % echo "Hello"
Hello
satyam@satyam-2 4-cs-tools % echo 'World'
World

# replacing strings
satyam@satyam-2 4-cs-tools % name="Satyam"
satyam@satyam-2 4-cs-tools % echo "Hello $name !!" #issue with !
echo "Hello $name name="Satyam""
Hello Satyam name=Satyam
satyam@satyam-2 4-cs-tools % echo "Hello $name "             
Hello Satyam 

#single quotes don't replace
satyam@satyam-2 4-cs-tools % echo 'Hello $name'
Hello $name
satyam@satyam-2 4-cs-tools % 

# Functions
satyam@satyam-2 src % source mcd.sh
satyam@satyam-2 src % mcd test

# Special cases
!! and tab -> repeat previous command
$? -> reads exit status of the last command executed

# OR operator
satyam@satyam-2 src % false || echo "fail"
fail
satyam@satyam-2 src % true || echo "fail"
satyam@satyam-2 src % echo $?
0 #return 0 is a good thing in UNIX 

# AND operator
satyam@satyam-2 src % true && echo "wohoo"
wohoo
satyam@satyam-2 src % false && echo "wohoo"

# storing command results in variable
satyam@satyam-2 src % location=$(pwd)
satyam@satyam-2 src % echo $location       
/Users/satyam/Personal/OSSU/4-cs-tools/1-miss-sem-cs/2-shell-scripting/src

satyam@satyam-2 src % echo "I am in $(pwd)"
I am in /Users/satyam/Personal/OSSU/4-cs-tools/1-miss-sem-cs/2-shell-scripting/src

# sample script

satyam@satyam-2 src % sh ./example.sh ../res/s1.txt ../res/s2.txt ../res/s3.txt ../res/s4.txt 
Starting program at Fri Nov 10 09:38:04 IST 2023
Running program ./example.sh with 4 arguments with pid 59156
File ../res/s1.txt does not have any Shakespeare, adding one
File ../res/s2.txt does not have any Shakespeare, adding one
File ../res/s3.txt does not have any Shakespeare, adding one
File ../res/s4.txt does not have any Shakespeare, adding one


satyam@satyam-2 src % ls e*  
example.sh

#Autocomplete 
ls ../res/s{1,2,3}.txt
ls ../res/s1.txt ../res/s2.txt ../res/s3.txt # On tab press

# Find all directories named src
find . -name src -type d

# Find all python files that have a folder named test in their path
find . -path '*/test/*.py' -type f

# Find all files modified in the last day
find . -mtime -1

# Find all zip files with size in range 500k to 10M
find . -size +500k -size -10M -name '*.tar.gz'

# Backward search
Ctrl+r
```
