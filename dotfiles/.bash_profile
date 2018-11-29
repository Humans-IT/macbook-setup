export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH

export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

ssh-agent

ssh-add -K .ssh/id_rsa

ssh-add -l

source ~/.alias
source ~/.sshalias
source ~/.fonctions
source ~/.exportAWS
