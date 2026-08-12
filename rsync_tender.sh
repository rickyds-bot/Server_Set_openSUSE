rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_tender.log --exclude *.bak --exclude *.tmp /data2/tender/share/ /backup_tender/
