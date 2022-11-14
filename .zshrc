# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
plugins=(git web-search sudo dirhistory zsh-autosuggestions history)
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR='vim'
export VISUAL='vim'

# paths
# path+=('your path here')

# aliases
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias tkill='tmux kill-server'

# functions
ltk(){pdflatex $@.tex && latexmk -c}

tdev(){
    tmux new-session -s $1 -d
    tmux send-keys 'htop' Enter
    tmux split-window -v -p 70
    tmux send-keys 'julia' Enter
    tmux send-keys C-l
    tmux split-window -h -p 50
    tmux send-keys 'cd ~/GitRepos' Enter
    tmux send-keys C-l
    tmux attach-session -t $1
}
