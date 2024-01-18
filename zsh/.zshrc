alias ls="ls --color=auto"
function sshc(){ssh $(cat ~/.ssh/config | fzf | sed 's/Host //g')}
PS1='[%n@%m %~]$ '
LS_COLORS="di=1;34"
