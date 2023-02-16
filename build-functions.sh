#!/bin/bash

filename="$HOME/r/Bash/.functions"
echo "# In ~/.bashrc" > $filename
echo "# functionCustomFilename=\"\$HOME/r/Bash/functions.sh\"" >> $filename
echo "# [ -e \$functionCustomFilename ] && \$functionCustomFilename" >> $filename
cat ~/r/Bash/functions/*.sh >> $filename

