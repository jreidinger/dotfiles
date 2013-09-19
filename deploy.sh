#! /bin/sh
for i in {*,.*}; do
  if [ "$i" = ".." -o \
       "$i" = "." -o \
       "$i" = ".git" -o \
       "$i" = ".gitignore" -o \
       "$i" = "deploy.sh" ]; then
    echo "skipping '$i'"
  else
    echo "deploying '$i'"
    cp -r "$i" ~/
  fi
done
