rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_library.log --exclude *.bak --exclude *.tmp /data1/library/share/ /backup_library/
