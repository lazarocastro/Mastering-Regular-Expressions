sed 's/^\s*//g' highstate 
sed -i 's/^\s*//g' highstate 

grep -Pzo '(?<=-{10})\n__id__:(?:\n|.)+?(?=changes:)' highstate 
grep -Pzo '(?<=-{10})\n__id__:(?:\n|.)+?(?=changes:)' highstate > sls-report.txt

