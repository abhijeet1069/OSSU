# GIT

## GIT Basics

```zsh

# Initialize a git repository
satyam@satyam-2 demo % git init
Initialized empty Git repository in /Users/satyam/Personal/OSSU/4-cs-tools/1-miss-sem-cs/6-git/playground/demo/.git/

# Git status
satyam@satyam-2 demo % git status
On branch main
No commits yet

# Git commit
satyam@satyam-2 demo % git commit -m "hello message"
[main (root-commit) f9431f8] hello message
 1 file changed, 1 insertion(+)
 create mode 100644 hello.txt

# Show commit logs
satyam@satyam-2 demo % git log
commit f9431f8bb6314d5562f0423f111c37094b7ef269 (HEAD -> main)
Author: abhijeet1069 <abhijeet1069@gmail.com>
Date:   Tue Nov 14 20:36:30 2023 +0530

    hello message

# Git tree structure
satyam@satyam-2 demo % git cat-file -p f9431f8bb6314d5562f0423f111c37094b7ef269
tree 68aba62e560c0ebc3396e8ae9335232cd93a3f60
author abhijeet1069 <abhijeet1069@gmail.com> 1699974390 +0530
committer abhijeet1069 <abhijeet1069@gmail.com> 1699974390 +0530

hello message

satyam@satyam-2 demo % git cat-file -p 68aba62e560c0ebc3396e8ae9335232cd93a3f60
100644 blob 3b18e512dba79e4c8300dd08aeb37f8e728b8dad    hello.txt

satyam@satyam-2 demo % git cat-file -p 3b18e512dba79e4c8300dd08aeb37f8e728b8dad
hello world

# Git log pretty print
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

Its the killer feature of GIT, and sets it apart from other VCS.

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

# Checkout main and merge cat into it
satyam@satyam-2 playground % git checkout main
M       4-cs-tools/1-miss-sem-cs/6-git/6-git.md
M       4-cs-tools/1-miss-sem-cs/6-git/playground/demo
M       syncStatus.txt
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

## Merge
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

## GIT status

-s : short

```zsh
git status -s
```

D - Deleted
M - modified
?? - untracked

## Undo commit changes

commit is like saving data onto git database.

```zsh
git commit --amend -m "changes reverted"
```

## Tagging

Used to mark release points v1.0, v2.0

## Git log

```zsh
git log --pretty=oneline
```

## Git Aliases

```zsh
git config --global alias.unstage 'reset HEAD --'

git unstage fileA
git reset HEAD -- fileA
```
