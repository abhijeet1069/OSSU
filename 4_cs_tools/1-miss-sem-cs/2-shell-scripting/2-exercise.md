# Exercise : Shell Scripting

Read man ls and write an ls command that lists files in the following manner

- Includes all files, including hidden files
- Sizes are listed in human readable format (e.g. 454M instead of 454279954)
- Files are ordered by recency
- Output is colorized

```zsh
ls -l -h -G -t 
-l : list all files and details
-h : list size in human readable format
-t : files ordered by recency
-G : enable colorized output
```
