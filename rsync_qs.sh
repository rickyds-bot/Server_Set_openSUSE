rsync -avhr --no-owner --no-group --progress --log-file=/log/$(date +%Y%m%d)_rsync_qs.log --exclude *.bak --exclude *.tmp /data2/qs/share/ /backup_qs/

