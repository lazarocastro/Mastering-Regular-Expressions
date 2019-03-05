 grep -P "(\d{5})(-\d{4})" customer-data.txt
 grep -P "(\d{5})(?=-\d{4})" customer-data.txt
 
 grep -P 'linuxacademy\.com' access-logs
 grep -P 'linuxacademy\.com(\/blog)?' access-logs
 grep -P 'linuxacademy\.com(?!\/blog)' access-logs
 grep -P -o 'linuxacademy\.com(?!\/blog)' access-logs
