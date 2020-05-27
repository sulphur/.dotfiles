ulimit -n 4096

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export EDITOR=vim

zsh_terraform() {
  # break if there is no .terraform directory
  if [[ -d .terraform ]]; then
    local tf_workspace=$(terraform workspace show)
    echo -n "$tf_workspace"
  fi
}

# Terraform Segment
export POWERLEVEL9K_CUSTOM_TERRAFORM="zsh_terraform"
export POWERLEVEL9K_CUSTOM_TERRAFORM_BACKGROUND=057
export POWERLEVEL9K_CUSTOM_TERRAFORM_FOREGROUND=015

export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs aws docker_machine nvm custom_terraform )
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time time battery kubecontext)
export POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
export POWERLEVEL9K_COLOR_SCHEME='dark'
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
export POWERLEVEL9K_SHORTEN_DELIMITER=""
export POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

[[ -s "$HOME/.dotfiles/zgen_config.zsh" ]] && source "$HOME/.dotfiles/zgen_config.zsh"
[[ -s "$HOME/.dotfiles/alias" ]] && source "$HOME/.dotfiles/alias"

#[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.asdf/asdf.sh" ]] && source "$HOME/.asdf/asdf.sh"
# The next line updates PATH for the Google Cloud SDK.
#source "$HOME/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
#source "$HOME/google-cloud-sdk/completion.zsh.inc"

#export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
#export KUBERNETES_MASTER=http://172.17.8.101:8080

unsetopt share_history

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
unalias gr

test -e ${HOME}/.zshrc_private && source "$HOME/.zshrc_private"
export PATH="/usr/local/opt/curl/bin:$PATH"
