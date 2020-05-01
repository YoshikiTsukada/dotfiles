alias ll='ls -alh'
alias cp='cp -i'
alias mv='mv -i'

alias gb='git branch'
alias gch='git checkout'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin HEAD'
alias gfp='git push -f origin HEAD'
alias gl='git log'

alias kenkosetup='bundle exec rake carthage:bootstrap && xcodegen && bundle exec pod install'
alias kenkoopen='open kenko.xcworkspace'

autoCompileTex() {
  if [ -z "$1" ]; then
    echo 'Please input file name.'
  elif [[ -e ./$1.tex ]]; then
    platex $1.tex
    dvipdfmx $1.dvi
    rm $1.aux
    rm $1.dvi
    rm $1.log
    open $1.pdf
  else
    echo "$1.tex: No such file, or other errors occurred."
  fi
}
