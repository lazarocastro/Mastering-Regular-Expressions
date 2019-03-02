 perl -lne '/(?:<[Hh][2-3].*?>)(.*?)(?:<\/[Hh][2-3]>)/ && print $1' study-guide.html
