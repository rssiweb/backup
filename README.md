## setup autorestic to take postgres db backup up to backblaze

## Home directory of the user

- .autorestic.env 
- .autorestic.yml
- *.sh

Note: find and replace the home directory path in all above files

 ### crontab
```bash
PATH="/usr/local/bin:/usr/bin:/bin"

*/5 * * * * autorestic -c /home/worker/.autorestic.yml --ci cron > /home/worker/autorestic.log 2>&1
```

