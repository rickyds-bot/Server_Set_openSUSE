rsync -avhr --no-owner --no-group --progress --log-file=/root/log/$(date +%Y%m%d)_rsync_plan.log --exclude *.bak --exclude *.tmp /data1/planning/share/ /backup_planning/

