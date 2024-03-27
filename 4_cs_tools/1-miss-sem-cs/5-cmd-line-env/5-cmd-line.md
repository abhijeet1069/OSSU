# Command Line Environment

## Job Control

### Signals

Ctrl-C : SIGINT (Signal Interrupt)
Ctrl-Z : SIGSTP
Ctrl-\ : SIGQUIT
Ctrl-T : SIGINFO

```zsh
# Ctrl+C is a signal to stop the program
satyam@satyam-2 4-cs-tools % sleep 20
^C
satyam@satyam-2 4-cs-tools % 
```

## Terminal Multiplexers

tmux
Sessions
    Windows (Tabs)
    Panes

## Aliases

To make an alias persistent you need to include it in shell startup files, like .bashrc or .zshrc

```zsh
satyam@satyam-2 src % alias ll="ls -lah"
satyam@satyam-2 src % ll
total 8
drwxr-xr-x  3 satyam  staff    96B Nov 12 09:05 .
drwxr-xr-x  4 satyam  staff   128B Nov 12 09:04 ..
-rw-r--r--  1 satyam  staff   433B Nov 12 11:07 sigint.py

# Get current status of alias
satyam@satyam-2 src % alias ll
ll='ls -lah'

# Aliases are lost when we close the shell. 
```

We can store global config for shell in ~/.bashrc or ~/.zshrc depending on the shell.
We can reference to our custom dotfiles using symlinks.
