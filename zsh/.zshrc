alias ls="ls --color=auto"
function sshc(){print -s $(cat ~/.ssh/config | fzf --preview 'echo ssh {2}' --preview-window=down,1 | sed 's/Host /ssh /g')}
PS1='[%n@%m %~]$ '
LS_COLORS="di=1;34"
