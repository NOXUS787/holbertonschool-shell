#!/bin/bash
read -p "Enter the filename to create: " filename
printf '#!/bin/bash\n' > "$filename"
chmod +x "$filename"
emacs "$filename"
