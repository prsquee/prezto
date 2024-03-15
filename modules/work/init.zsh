# my work stuff
zmodload zsh/pcre

att() {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    set -i
    /usr/bin/casegrab $1 && cd /storage/cases/$1
  else 
    /usr/bin/casegrab $CASE && cd /storage/cases/$CASE
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
