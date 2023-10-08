#install SML
brew install smlnj

# setup environment variables
path=('/usr/local/smlnj/bin' $path)
# export to sub-processes (make it inherited by child processes)
export PATH

#check current status in zsh
nano ~/.zshrc