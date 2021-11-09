# my work stuff
zmodload zsh/pcre

att() {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    set -i
    /home/squee/.local/bin/attachmentmonster $1 ; cd /storage/cases/$1
  else 
    /home/squee/.local/bin/attachmentmonster $CASE ; cd /storage/cases/$CASE
  fi
}

function chpwd() {
  if [[ "$PWD" -pcre-match '/(0\d{7})' ]]; then
     CASE=$match[1]
     export CASE
   else
     unset CASE
  fi
}
