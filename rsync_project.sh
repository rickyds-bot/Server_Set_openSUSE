rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_project.log --exclude *.bak --exclude *.tmp /data2/project/share/ /backup_project/

