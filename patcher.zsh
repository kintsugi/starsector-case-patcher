#!/usr/bin/env zsh

starsector_mods_dir=/home/pearagon/gaming/games/starsector/mods
patch_txt=${0:a:h}/patches.txt

cd $starsector_mods_dir
cat $patch_txt | while read file; do
  
  matches=("${(@f)$(fd --ignore-case --type f "$file" "$starsector_mods_dir")}")
  from_file="$matches[1]"
  to_file="$(dirname $from_file)/$file"

  if [[ -r "$to_file" ]]; then
    echo Skipping "$file"
    continue
  fi

  echo moving "$from_file" to "$to_file" and creating "$from_file".bak
  cp "$from_file" "$to_file"
  mv "$from_file" "$from_file".bak

done
