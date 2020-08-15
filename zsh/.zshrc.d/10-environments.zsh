#----------#
# homebrew #
#----------#
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

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
