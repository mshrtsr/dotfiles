
#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|
#

#--------#
# Prezto #
#--------#
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# change prompt symbol
#export PURE_PROMPT_VICMD_SYMBOL="<"
# update Prezto
alias update-prezto=" \
pushd ${ZPREZTODIR} && \
git pull && \
git submodule update --init --recursive && \
popd"

#--------#
# iTerm2 #
#--------#
# shell integration
if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
  source "${HOME}/.iterm2_shell_integration.zsh"
fi

#-------#
# shell #
#-------#
# editor
VISUAL=/usr/bin/vim
EDITOR=/usr/bin/vim
# open zshrc with VISUAL editor
alias zshrc="${VISUAL} ~/.zshrc"
# reload zshrc
alias sz='source ~/.zshrc'
# handler
function command_not_found_handler(){
  echo -e "m9(^Д ^)"
}

#-------------#
# completions #
#-------------#
# homebrew
if type brew &>/dev/null; then
  fpath=($(brew --prefix)/share/zsh/site-functions ${fpath})
fi
# zsh-completions
if [[ -e "/usr/local/share/zsh-completions" ]]; then
  fpath=(/usr/local/share/zsh-completions ${fpath})
fi
# ${HOME}/.zsh/completion
if [[ -e "${HOME}/.zsh/completion" ]]; then
  fpath=(${HOME}/.zsh/completion ${fpath})
fi
# load completions
autoload -Uz compinit && compinit

#----#
# Go #
#----#
export GOPATH="${HOME}/go"
export PATH="${GOPATH}/bin:${PATH}"
export GO111MODULE=auto

#--------#
# anyenv #
#--------#
# direnv
if [[ -s "/usr/local/bin/direnv" ]]; then
  eval "$(direnv hook zsh)"
fi
## rbenv
if [[ -s "${HOME}/.rbenv/bin/rbenv" ]]; then
  export PATH="${HOME}/.rbenv/bin:${PATH}"
  eval "$(rbenv init -)"
fi
## nodenv
if [[ -s "${HOME}/.nodenv/bin/nodenv" ]]; then
  export PATH="${HOME}/.nodenv/bin:${PATH}"
  eval "$(nodenv init -)"
fi
## pyenv
if [[ -e "/usr/local/opt/openssl@1.1/bin/" ]]; then
  export PATH="/usr/local/opt/openssl@1.1/bin:${PATH}"
  eval "$(pyenv init -)"
fi

#---------#
# library #
#---------#
# mysql
#export PATH="/usr/local/opt/mysql@5.7/bin:${PATH}"
#export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
#export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
#export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"
# mysql-client
#export PATH="/usr/local/opt/mysql-client/bin:${PATH}"
#export LDFLAGS="-L/usr/local/opt/mysql-client/lib"
#export CPPFLAGS="-I/usr/local/opt/mysql-client/include"
# openssl
#export PATH="/usr/local/opt/openssl@1.1/bin:${PATH}"
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
# sdl2
export LIBRARY_PATH="${LIBRARY_PATH}:/usr/local/lib"

#-----#
# git #
#-----#
alias g=git

alias gs='git status -sb'
alias gp='git pull'

alias ga='git add'
alias gaa='git add -A'

alias gc='git commit -m'

alias gl='git log --oneline'

#---------#
# aliases #
#---------#
# ls
alias la='ls -A'
alias lg='ls -Agh'
alias ll='ls -Ahl'
# force interactive
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# enable alias in sudo
alias sudo='sudo '
# xcode cli
alias xcode='open -a /Applications/Xcode.app'
# tree alias
alias tree='tree -L 5 --dirsfirst'
# medis
if [[ -e "${HOME}/.medis/" ]]; then
  alias medis="pushd ${HOME}/.medis/medis;npm start;popd;"
fi
# wttr.in
alias wttr='curl wttr.in/Fukuoka'
alias wttr2='curl v2.wttr.in/Fukuoka'
