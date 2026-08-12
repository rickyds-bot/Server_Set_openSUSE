rsync -avhr --no-owner --no-group --progress --log-file=/log/$(date +%Y%m%d)_rsync_finance.log --exclude *.bak --exclude *.tmp /data2/finance/share/ /backup_finance/

