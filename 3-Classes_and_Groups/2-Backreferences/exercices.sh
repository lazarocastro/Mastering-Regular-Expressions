grep -o -P "<h\d.+?>.*?<\/h\d>" study-guide.html
grep -o -P "<([Hh][2-3]).+?>.*?<\/\1>" study-guide.html
grep -o -P "<([Hh][2-3]).+?>.*?<\/\1>" study-guide.html | sed 's/<[^>]*>//g'
grep -o -P "<([Hh][2-3]).+?>.*?<\/\1>" study-guide.html | sed 's/<[^>]*>//g' > toc.txt

