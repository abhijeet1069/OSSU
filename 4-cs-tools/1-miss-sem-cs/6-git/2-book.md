# Pro GIT

## GIT config file location

--global : $HOME/.gitconfig
--system : configs to current user
--local : configs local to repository (by default)

## GIT Branching

HEAD is a pointer to the local branch you are currently on.
GIT won't let you switch branches if your working directory or staging area has uncommited changes.
Staging the file marks it as resolved in Git.
“main” is the default name for a starting branch when you run git init
“origin” is the default name for a remote when you run git clone.
Do not rebase commits that exist outside your repository and that people may have based work on.

### Creating Branch

```zsh
git branch testing
```

### Switching Branches

```zsh
git checkout testing
```

### Merging changes

```zsh
git checkout main
git merge testing
```

### Deleting branch

```zsh
git branch -d testing
```

### Show branch

```zsh
git branch -a
```
