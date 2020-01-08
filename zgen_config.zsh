# load zgen

HOME_DIR=`echo ~$USER`

source "$HOME_DIR/.dotfiles/zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    #zgen oh-my-zsh plugins/sudo
    #zgen oh-my-zsh plugins/command-not-found

    # old
    #zgen oh-my-zsh plugins/bundler
    #zgen oh-my-zsh plugins/osx
    #zgen oh-my-zsh plugins/rake
    #zgen oh-my-zsh plugins/ruby
    #zgen oh-my-zsh plugins/battery
    zgen oh-my-zsh plugins/brew
    #zgen oh-my-zsh plugins/brew-cask
    #zgen oh-my-zsh plugins/heroku
    #zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/docker
    #zgen oh-my-zsh plugins/nvm
    #zgen oh-my-zsh plugins/rvm
    #zgen oh-my-zsh plugins/spring
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/zsh-navigation-tools

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load rimraf/k
    #zgen load Tarrasch/zsh-autoenv
    #zgen load horosgrisa/autoenv
    #zgen load sulphur/elixir-oh-my-zsh

    # bulk load
    # zgen loadall <<EOPLUGINS
        # zsh-users/zsh-history-substring-search
# EOPLUGINS
    # ^ can't indent this EOPLUGINS

    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions
    # completions
    # zgen load zsh-users/zsh-completions src

    # theme
    #zgen oh-my-zsh themes/agnoster

    zgen load bhilburn/powerlevel9k powerlevel9k

    # save all to init script
    zgen save

fi
