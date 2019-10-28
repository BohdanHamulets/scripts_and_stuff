# This file is not for importing (at all!) it's just to document some common tricks to not forgot :) 


# Add this to your bashrc to view history of commands run along with their timestamp

export HISTTIMEFORMAT="%d/%m/%y %T " 

# Aliases for accessing remote machines

# 1) The king of all aliases, this will show all the active aliases, as those tends to be forgotten,
# keep in mind that this path is hardcoded and needs to be changed from bash_profile in MAC to .bashrc in Ubuntu

alias show='grep alias $HOME/.bash_profile | grep -v "grep"' 

# 2) Alias to quickly connect to your remote server, configured securly, via ssh key login only:

alias centosAS='ssh -i <path_to_private_key> <username>@<hostname>'
if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
    fortune | cowsay
fi
