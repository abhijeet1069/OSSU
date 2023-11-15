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


satyam@satyam-2 demo % git log --all --graph --decorate
* commit 7c9d39adc3c6b12f3031c1c10d4ad52ab9ceabcf (main)
| Author: abhijeet1069 <abhijeet1069@gmail.com>
| Date:   Tue Nov 14 20:53:04 2023 +0530
| 
|     another line added
| 
* commit f9431f8bb6314d5562f0423f111c37094b7ef269 (HEAD)
  Author: abhijeet1069 <abhijeet1069@gmail.com>
  Date:   Tue Nov 14 20:36:30 2023 +0530
  
      hello message
:...skipping...
* commit 7c9d39adc3c6b12f3031c1c10d4ad52ab9ceabcf (main)
| Author: abhijeet1069 <abhijeet1069@gmail.com>
| Date:   Tue Nov 14 20:53:04 2023 +0530
| 
|     another line added
| 
* commit f9431f8bb6314d5562f0423f111c37094b7ef269 (HEAD)
  Author: abhijeet1069 <abhijeet1069@gmail.com>
  Date:   Tue Nov 14 20:36:30 2023 +0530
  
      hello message

satyam@satyam-2 demo % git checkout main
Previous HEAD position was f9431f8 hello message
Switched to branch 'main'

# Git Diff
satyam@satyam-2 demo % git diff hello.txt 
diff --git a/hello.txt b/hello.txt
index fdff486..3b5198c 100644
--- a/hello.txt
+++ b/hello.txt
@@ -1,2 +1,3 @@
 hello world
 another line
+yet another line
\ No newline at end of file

# What changes have been done in hello.txt since commit 7c9d39
satyam@satyam-2 demo % git diff 7c9d39 hello.txt
diff --git a/hello.txt b/hello.txt
index fdff486..3b5198c 100644
--- a/hello.txt
+++ b/hello.txt
@@ -1,2 +1,3 @@
 hello world
 another line
+yet another line
\ No newline at end of file

```

## Git Branches

Can do multiple branches of development using this.

```zsh
git add animal.py
satyam@satyam-2 playground % git commit -m "animal.py created"
[main 2e13dd9] animal.py created
 1 file changed, 10 insertions(+)
 create mode 100644 4-cs-tools/1-miss-sem-cs/6-git/playground/animal.py

satyam@satyam-2 playground % git branch
* main
satyam@satyam-2 playground % git branch -vv 
* main 2e13dd9 [origin/main: ahead 1] animal.py created

# Creating new branch cat
satyam@satyam-2 playground % git branch cat
satyam@satyam-2 playground % git log --all --graph --decorate
* commit 2e13dd939c535cacb5cb36a4cc38f2b3f1920ca2 (HEAD -> main, cat)
| Author: abhijeet1069 <abhijeet1069@gmail.com>
| Date:   Wed Nov 15 08:50:16 2023 +0530
| 
|     animal.py created
...

# Git Diff
satyam@satyam-2 playground % git checkout cat
M       4-cs-tools/1-miss-sem-cs/6-git/6-git.md
M       4-cs-tools/1-miss-sem-cs/6-git/playground/demo
M       syncStatus.txt
Switched to branch 'cat'

 import sys
 
+def cat():
+    print('Meow!')
+
 def default():
     print("Hello")
 
 def main():
-    default()
+    if sys.argv[1] == 'cat':
+        cat()
+    else:
+        default()
 
 if __name__ == '__main__':
     main()

satyam@satyam-2 playground % git log --all --graph --decorate --oneline
* f924e9c (HEAD -> cat) cat added
* 2e13dd9 (main) animal.py created
* ad14ebf (origin/main) new commit
* bd99d9a new commit
* 920f327 new commit
* 1d45172 new commit

# Create new branch dog
satyam@satyam-2 playground % git checkout main
M       4-cs-tools/1-miss-sem-cs/6-git/6-git.md
M       4-cs-tools/1-miss-sem-cs/6-git/playground/demo
M       syncStatus.txt
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)
satyam@satyam-2 playground % git checkout -b dog             
Switched to a new branch 'dog'

satyam@satyam-2 playground % git diff
diff --git a/4-cs-tools/1-miss-sem-cs/6-git/playground/demo b/4-cs-tools/1-miss-sem-cs/6-git/playground/demo
index f9431f8..7c9d39a 160000
--- a/4-cs-tools/1-miss-sem-cs/6-git/playground/demo
+++ b/4-cs-tools/1-miss-sem-cs/6-git/playground/demo
 def main():
-    default()
+    if sys.argv[1] == 'dog':
+        dog()
+    else:
+        default()
 
 if __name__ == '__main__':
     main()
No newline at end of file

# Committed dog feature.
satyam@satyam-2 playground % git commit animal.py -m "dog added"
[dog a21ca33] dog added
 1 file changed, 7 insertions(+), 1 deletion(-)

# git log
 satyam@satyam-2 playground % git log --all --graph --decorate --oneline
* a21ca33 (HEAD -> dog) dog added
| * f924e9c (cat) cat added
|/  
* 2e13dd9 (main) animal.py created
* ad14ebf (origin/main) new commit

# Chckout main and merge cat into it
satyam@satyam-2 playground % git checkout main
M       4-cs-tools/1-miss-sem-cs/6-git/6-git.md
M       4-cs-tools/1-miss-sem-cs/6-git/playground/demo
M       syncStatus.txt
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)
satyam@satyam-2 playground % git merge cat   
Updating 2e13dd9..f924e9c
Fast-forward
 4-cs-tools/1-miss-sem-cs/6-git/playground/animal.py | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

 satyam@satyam-2 playground % git merge dog
Auto-merging 4-cs-tools/1-miss-sem-cs/6-git/playground/animal.py
CONFLICT (content): Merge conflict in 4-cs-tools/1-miss-sem-cs/6-git/playground/animal.py
Automatic merge failed; fix conflicts and then commit the result.

# After manually doing the changes
satyam@satyam-2 playground % git merge --continue
U       4-cs-tools/1-miss-sem-cs/6-git/playground/animal.py
error: Committing is not possible because you have unmerged files.
hint: Fix them up in the work tree, and then use 'git add/rm <file>'
hint: as appropriate to mark resolution and make a commit.
fatal: Exiting because of an unresolved conflict.

# Git add and commit
satyam@satyam-2 playground % git log --all --graph --decorate --oneline
* a21ca33 (dog) dog added
| * f924e9c (HEAD -> main, cat) cat added
|/  
* 2e13dd9 animal.py created
* ad14ebf (origin/main) new commit
```
