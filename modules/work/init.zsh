# my redhat stuff
#

# goto fubar

fu () {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    ssh -t fubar "cd /fubar/$1 ; bash --login"
  elif [[ $1 =~ "^/fubar/[0-9]{8}" ]]; then
    ssh -t fubar "cd $1 ; bash --login"
  else
    printf "$0 needs a case number.\n"
  fi
}
