# my redhat stuff
#
# goto fubar

fu () {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    ssh fubar "cd /fubar/$1; zsh --login"
  elif [[ $1 =~ "^/fubar/[0-9]{8}" ]]; then
    ssh fubar "cd $1; zsh --login"
  else
    printf "$0 needs a case number.\n"
  fi
}
