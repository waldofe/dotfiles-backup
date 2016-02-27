export ZSH=/Users/osw/.oh-my-zsh
ZSH_THEME="fishy"
DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

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

