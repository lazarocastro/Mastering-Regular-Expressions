sed -r 's/^\s+//' hs.test.json
sed -r '1s/(.+?):/RUN REPORT: \1\n/' hs.test.json
sed -r '/-{10}/d' hs.test.json
grep -P '(p?)changes:' hs.test.json
sed -E -f minionreport.sed hs.test.json
sed -E -f minionreport.sed hs.test.json > minion1_2019-03-05
cat minion1_2019-03-05
