echo "1" > /proc/sys/vm/drop_caches
echo "2" > /proc/sys/vm/drop_caches
echo "3" > /proc/sys/vm/drop_caches

sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt autoremove
sudo apt-get autoremove --purge

#!/bin/bash  
#Removes old revisions of snaps  
#CLOSE ALL SNAPS BEFORE RUNNING THIS  
set -eu  
LANG=en_US.UTF-8 
snap list --all | awk '/disabled/{print $1, $3}' |
      while read snapname revision; do
          snap remove "$snapname" --revision="$revision"
      done

journalctl --disk-usage
sudo journalctl --vacuum-time=1w 
rm -rf /var/log/journal/askd342fh35aewfhagf67iuro1
du -sh ~/.cache/thumbnails
rm -rf ~/.cache/thumbnails/*

conda clean -p
conda clean --packages
conda clean --tarballs
conda clean -a

sudo apt autoremove --purge snapd
sudo rm -r ~/.cache/pip
du -h  /var/lib/snapd/snaps 


