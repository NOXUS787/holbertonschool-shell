#!/bin/bash
read -p "Enter the filename to create (e.g. myscript.sh): " fname
if [ -e "$fname" ]; then
  read -p "File exists. Overwrite? (y/N) " ans
  case "$ans" in
    [Yy]*) ;;
    *) echo "Aborted."; exit 1 ;;
  esac
fi
printf '%s\n' '#!/bin/bash' > "$fname"
chmod +x "$fname"
editor=${EDITOR:-nano}
"$editor" "$fname"