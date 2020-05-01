export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

ZSHHOME="${HOME}/dotfiles/zsh"

source $ZSHHOME/alias.sh
source $ZSHHOME/other_settings.sh
source $ZSHHOME/path.sh
source $ZSHHOME/zplug_alien.zsh
source $ZSHHOME/zplug_zsh-autosuggestions.zsh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose
