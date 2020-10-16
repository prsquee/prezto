# my work stuff
zmodload zsh/pcre
att() {
  if [[ $1 =~ "^[0-9]{8}$" ]]; then
    attachmentmonster $1
    cd ~/cases/$1
  else
    printf "$0 needs a case number.\n"
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
