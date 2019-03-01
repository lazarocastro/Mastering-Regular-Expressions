
grep "\b[A-Z][A-Z]\b" customer-data.txt
grep "\b[A-Z0-9][A-Z0-9]\b" customer-data.txt
grep -P "\b[^D][^E]\b" customer-data.txt
grep -P "\b[^D\d\s][^E\d\s]\b" customer-data.txt
