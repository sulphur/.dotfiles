ulimit -n 4096

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin"
export EDITOR=vim

export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs aws docker_machine nvm)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time time battery)
export POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#export POWERLEVEL9K_COLOR_SCHEME='light'

[[ -s "$HOME/.dotfiles/zgen_config.zsh" ]] && source "$HOME/.dotfiles/zgen_config.zsh"
[[ -s "$HOME/.dotfiles/alias" ]] && source "$HOME/.dotfiles/alias"

#[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.asdf/asdf.sh" ]] && source "$HOME/.asdf/asdf.sh"
# The next line updates PATH for the Google Cloud SDK.
source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
source "$HOME/google-cloud-sdk/completion.zsh.inc"

#export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
#export KUBERNETES_MASTER=http://172.17.8.101:8080

unsetopt share_history

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
unalias gr

source "$HOME/.zshrc_private"
