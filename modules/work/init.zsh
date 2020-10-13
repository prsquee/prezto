# my redhat stuff
# goto fubar

att() {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    attachmentmonster $1
    cd ~/cases/$1
  else
    printf "$0 needs a case number.\n"
  fi
}
