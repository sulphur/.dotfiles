# load zgen
source "${HOME}/.dotfiles/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found

    # old
    zgen oh-my-zsh plugins/bundler
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/rake
    zgen oh-my-zsh plugins/ruby
    zgen oh-my-zsh plugins/battery
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/brew-cask
    zgen oh-my-zsh plugins/heroku
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/docker
    # zgen oh-my-zsh plugins/mix
    zgen oh-my-zsh plugins/nvm
    zgen oh-my-zsh plugins/rvm
    zgen oh-my-zsh plugins/spring
    zgen oh-my-zsh plugins/z

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load rimraf/k
    zgen load Tarrasch/zsh-autoenv
    zgen load horosgrisa/autoenv
    zgen load sulphur/elixir-oh-my-zsh


    # bulk load
    # zgen loadall <<EOPLUGINS
        # zsh-users/zsh-history-substring-search
# EOPLUGINS
    # ^ can't indent this EOPLUGINS

    zgen load zsh-users/zsh-history-substring-search
    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/agnoster

    # save all to init script
    zgen save

fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ulimit -n 4096

export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
export THEOS=/Users/piotr/theos
export THEOS_DEVICE_IP=172.20.10.1 THEOS_DEVICE_PORT=22
export PATH=$PATH:/Users/piotr/Documents/Projects/msaas/scalezen-chef
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/Users/piotr/Documents/Projects/msaas/chopstick

#alias mdockerinit="docker-machine start default ; eval $(docker-machine env default)"

[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
[[ -s /Users/piotr/.nvm/nvm.sh ]] && . /Users/piotr/.nvm/nvm.sh # This loads NVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# path to the DCOS CLI binary
if [[ "$PATH" != *"/Users/piotr/Documents/Projects/labs/mesosphere/dcos/dcos/bin"* ]];
  then export PATH=$PATH:/Users/piotr/Documents/Projects/labs/mesosphere/dcos/dcos/bin;
fi


# The next line updates PATH for the Google Cloud SDK.
source '/Users/piotr/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/piotr/google-cloud-sdk/completion.zsh.inc'

export FLEETCTL_ENDPOINT=http://172.17.8.101:4001
export KUBERNETES_MASTER=http://172.17.8.101:8080

