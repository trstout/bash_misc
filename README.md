# #!/bin/bash

## Misc <br>
- **.bash_aliases**: a few handy bash aliases that I use regularly. <br>
- **diceinteract.sh**: first swing at bashware. <br>
- **cachedrop.sh** - cache troubles? PageCache, Inode, and Dentry purgative. <br>

## .bash_aliases
 Just a few aliases that I use. Using a modular/portable .bash_aliases file makes managing aliases a bit easier and avoids cluttering up .(bash|zsh)rc. 

### Setup

1. Create .bash_aliases
```bash
touch ~/.bash_aliases
```
or 
```bash
vi ~/.bash_aliases
```
2. Append .bashrc (or .zshrc)
```bash
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi
```
3. Load (or reload) the file.
```bash
source ~/.bash_aliases
```
