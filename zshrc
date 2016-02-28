export ZSH=/Users/osw/.oh-my-zsh
ZSH_THEME="fishy"
DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=~/.dotfiles/bin:${PATH}

source $ZSH/oh-my-zsh.sh

. ~/projects/scripts/z/z.sh

source $(gem env gemdir)/gems/ohmygems-1.2.0/ohmygems

eval "$(rbenv init -)"

alias s='spring'
alias ss='spring rspec'
alias sr='spring rails'
alias sc='spring console'
alias atom='/Applications/Atom.app/Contents/Resources/app/atom.sh'
alias mou='/Applications/Mou.app/Contents/MacOS/Mou'

function bclean() {
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
}

# export TERM="xterm-256color"
# alias tmux="tmux -2"
