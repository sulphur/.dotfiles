ulimit -n 4096

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
export THEOS=/Users/piotr/theos
export THEOS_DEVICE_IP=172.20.10.1 THEOS_DEVICE_PORT=22
export PATH=$PATH:/Users/piotr/Documents/Projects/msaas/scalezen-chef
export PATH=$PATH:/Users/piotr/Documents/Projects/msaas/chopstick

[[ -s "$HOME/.dotfiles/zgen_config.zsh" ]] && source "$HOME/.dotfiles/zgen_config.zsh"
[[ -s "$HOME/.dotfiles/alias" ]] && source "$HOME/.dotfiles/alias"

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
[[ -s /Users/piotr/.nvm/nvm.sh ]] && . /Users/piotr/.nvm/nvm.sh # This loads NVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
source '/Users/piotr/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/piotr/google-cloud-sdk/completion.zsh.inc'

#export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
#export KUBERNETES_MASTER=http://172.17.8.101:8080

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
