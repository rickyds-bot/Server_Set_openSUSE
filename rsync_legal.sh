rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_legal.log --exclude *.bak --exclude *.tmp /data2/legal/share/ /backup_legal/
