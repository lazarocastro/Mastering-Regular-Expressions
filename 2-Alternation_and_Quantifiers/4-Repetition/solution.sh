grep -Po 'https?\:\/\/(www\.)?([a-zA-Z0-9][a-zA-Z0-9\-]*)\.([a-zA-Z]{2,63})\.?\/?([a-zA-Z0-9][a-zA-Z0-9\-]*)?' access-logs | sort -r | uniq -c
