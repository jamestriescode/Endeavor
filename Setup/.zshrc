# Autoloads
autoload -Uz vcs_info
autoload -Uz compinit && compinit

# Grabbing Git branch variable
precmd_vcs_info() { vcs_info }
precmd_functions+=(precmd_vcs_info)
zstyle ':vcs_info:git*' formats '%b'
setopt PROMPT_SUBST

# Prompts
PROMPT='
%F{yellow}<Directory: %~>-<Git: ${vcs_info_msg_0_} >
→%f  '
RPROMPT='%F{yellow}%* STATUS:%?'

# Shortcuts
alias kys='sudo shutdown now'
alias la='ls -a'
alias cat='bat'
alias work='cd /home/sargon/GitHub/Endeavor/'
alias grep='grep --color=auto'
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

alias refresh='/home/sargon/GitHub/Endeavor/Setup/Tools/refresh.sh'
alias save='source ~/.zshrc'

alias thighs='feh --bg-scale /home/sargon/Pictures/Wallpapers/thighs.jpeg'
alias space='feh --bg-scale /home/sargon/Pictures/Wallpapers/astronaut.png'
