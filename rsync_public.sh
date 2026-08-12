rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_public.log --exclude *.bak --exclude *.tmp /data2/public/ /backup_public/

