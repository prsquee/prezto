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
  if [[ "$PWD" -pcre-match '(/storage/cases/(\d{8}))' ]]; then
     BASE=$match[1]
     CASE=$match[2]
     export CASE BASE
   else
     unset CASE BASE
  fi
}
