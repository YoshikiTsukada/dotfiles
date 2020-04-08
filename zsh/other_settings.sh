# タブの保管候補をハイライトする
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=2

# 大文字小文字を無視して補完する
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
