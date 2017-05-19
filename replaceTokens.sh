
#!/bin/sh
#read_properties()
#
file="$1"
while IFS="=" read -r key value; do
  case "$key" in
    "title") title="${value::-1}";;
    "environment") environment="${value::-1}";;
  esac
done < "$1"


while IFS= read -r line ; do
  if [[ $line == *"[[title]]"* ]];
  then
    echo ${line/\[\[title]]/$title} >> $3
  elif [[ $line==*"[[environment]]"* ]];
  then
    echo ${line/\[\[environment]]/$environment} >> $3
  else
    echo $line >> $3
  fi
done < "$2"
