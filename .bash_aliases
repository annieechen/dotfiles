# commands
alias ls='ls -GpF'
alias rm='rm -i'

# randoms
alias grep="grep -rni . --color=auto - e"

# shortcuts to folders
alias dev='cd ~/dev'
alias pl='cd ~/Documents/PLSC257; ls'
alias ml='cd ~/Documents/STAT365; ls'

# shortcuts to opening applications
alias subl="open -a \"Sublime Text.app\""
alias rs="open -a \"RStudio\""
alias md="open -a MacDown"
alias bear="open -a Bear"
alias v="vim"

# quick open config files
alias bp="vim ~/.bash_profile"
alias ba="vim ~/.bash_aliases"
alias vc="vim ~/.vimrc"
alias ctc="vim ~/.tmux.conf"
alias resource="source ~/.bash_profile"

# git aliases
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias gp="git push"

# tmux aliases
alias tmls="tmux ls"
alias tnew="tmux -2 new-session -s"
alias tatt="tmux -2 attach -t"
alias tkil="tmux kill-session -t"
