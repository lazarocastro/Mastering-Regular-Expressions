 grep -o -P "<([Hh][2-3]).+?>.*?<\/\1>" study-guide.html | sed 's/<[^>]*>//g'
 grep -o -P "<(?'tag'[Hh][2-3]).+?>.*?<\/\k'tag'>" study-guide.html | sed 's/<[^>]*>//g'
 grep -o -P "<(?'tag'[Hh][2-3]).+?>.*?<\/\g{tag}>" study-guide.html | sed 's/<[^>]*>//g'
 grep -o -P "<(?'lazin'[Hh][2-3]).+?>.*?<\/\g{lazin}>" study-guide.html | sed 's/<[^>]*>//g'
