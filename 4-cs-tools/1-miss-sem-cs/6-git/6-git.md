# GIT

```zsh

satyam@satyam-2 playground % mkdir demo

satyam@satyam-2 playground % ls
demo

satyam@satyam-2 playground % ls -a
.               ..              .DS_Store       demo

satyam@satyam-2 playground % cd demo
satyam@satyam-2 demo % 

# Initialize a git reposiotry
satyam@satyam-2 demo % git init
Initialized empty Git repository in /Users/satyam/Personal/OSSU/4-cs-tools/1-miss-sem-cs/6-git/playground/demo/.git/

satyam@satyam-2 demo % echo "hello world" > hello.txt

satyam@satyam-2 demo % ls
hello.txt

# Git status
satyam@satyam-2 demo % git status
On branch main

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        hello.txt

nothing added to commit but untracked files present (use "git add" to track)

satyam@satyam-2 demo % git add hello.txt
satyam@satyam-2 demo % git status
On branch main

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   hello.txt

satyam@satyam-2 demo % git commit -m "hello message"
[main (root-commit) f9431f8] hello message
 1 file changed, 1 insertion(+)
 create mode 100644 hello.txt

satyam@satyam-2 demo % git log
commit f9431f8bb6314d5562f0423f111c37094b7ef269 (HEAD -> main)
Author: abhijeet1069 <abhijeet1069@gmail.com>
Date:   Tue Nov 14 20:36:30 2023 +0530

    hello message

satyam@satyam-2 demo % git cat-file -p f9431f8bb6314d5562f0423f111c37094b7ef269
tree 68aba62e560c0ebc3396e8ae9335232cd93a3f60
author abhijeet1069 <abhijeet1069@gmail.com> 1699974390 +0530
committer abhijeet1069 <abhijeet1069@gmail.com> 1699974390 +0530

hello message

satyam@satyam-2 demo % git cat-file -p 68aba62e560c0ebc3396e8ae9335232cd93a3f60
100644 blob 3b18e512dba79e4c8300dd08aeb37f8e728b8dad    hello.txt

satyam@satyam-2 demo % git cat-file -p 3b18e512dba79e4c8300dd08aeb37f8e728b8dad
hello world


satyam@satyam-2 demo % echo "another line" >> hello.txt
satyam@satyam-2 demo % cat hello.txt
hello world
another line

satyam@satyam-2 demo % git commit
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   hello.txt

no changes added to commit (use "git add" and/or "git commit -a")

satyam@satyam-2 demo % git add hello.txt
satyam@satyam-2 demo % git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt


satyam@satyam-2 demo % git commit -m "another line added"
[main 7c9d39a] another line added
 1 file changed, 1 insertion(+)

satyam@satyam-2 demo % git log --all --graph --decorate  
* commit 7c9d39adc3c6b12f3031c1c10d4ad52ab9ceabcf (HEAD -> main)
| Author: abhijeet1069 <abhijeet1069@gmail.com>
| Date:   Tue Nov 14 20:53:04 2023 +0530
| 
|     another line added
| 
* commit f9431f8bb6314d5562f0423f111c37094b7ef269
  Author: abhijeet1069 <abhijeet1069@gmail.com>
  Date:   Tue Nov 14 20:36:30 2023 +0530
  
      hello message

# Git checkout
satyam@satyam-2 demo % git checkout f9431
Note: switching to 'f9431'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD is now at f9431f8 hello message

```
