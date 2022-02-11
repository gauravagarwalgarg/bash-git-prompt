#Updaten all repo
alias updategit='cd ~/Projects; source updategit.sh; cd -'
alias update='sudo apt update && sudo apt full-upgrade && sudo apt autoclean && sudo apt autoremove && sudo apt autopurge'
#alias doxygen

# Useful script to format header files after tweaking C code.
alias header='vi -s ~/.vim/header_script.vim'

# System aliases
alias bye="sudo shutdown now"
alias hi="sudo reboot now"

# Git aliases
alias gs='git status'
alias gp='git pull'
alias gpp='git pull && git push'
alias gc='git commit'
alias gca='git commit -a'

alias gtkterm='gtkterm -p /dev/ttyUSB1 -s 115200 -f ~/Documents/x.txt'

#Make aliases
alias mk='make all -j8'
alias mka='make clean && make all -j8'
alias clean='rm -rf *.xml *.tar.gz *.xlsx *.log *.mat'

#MATLAB aliases
alias mat='cd ~/Projects/modular/ && matlab .'
alias octave='octave --force-gui'

#Python aliases
alias pip='pip3'

# Conda aliases
alias cond='conda deactivate'

# Repo
alias tle='cd ~/Space/Tle/Catalog_Study/Python/'

# Docker aliases
alias docker_purge='docker system prune -a'

# Bluetooth settings
alias blue='pactl info'
