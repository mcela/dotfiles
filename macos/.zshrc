[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

#export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/openssl@1.1/bin:$PATH
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

ibrew='arch -x86_64 /usr/local/homebrew/bin/brew'
mbrew='arch -arm64e /opt/homebrew/bin/brew'

iterminal='arch -x86_64 zsh'