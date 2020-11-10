# my redhat stuff
att () {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    set -i
    /home/squee/.local/bin/attachmentmonster $1 ; cd /storage/cases/$1
  fi
}
