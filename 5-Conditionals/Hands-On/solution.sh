 grep '^From:' emaillist.mbox
 grep -Po 'From: \w+ <\w+@\w+\.\w{2,63}>' emaillist.mbox
 grep '^Subject:' emaillist.mbox
 grep -Po 'Subject: .+' emaillist.mbox
 grep -Po '((From)|Subject): (?(2)\w+ <\w+@\w+\.\w{2,63}>|.+)' emaillist.mbox
 grep -Po '((From)|Subject): (?(2)\w+ <\w+@\w+\.\w{2,63}>|.+)' emaillist.mbox > mailing-list-report.txt
