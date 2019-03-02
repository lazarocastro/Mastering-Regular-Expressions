perl -lne '/GET (\/\w+?) HTTP\/1.0" 200 \d\d\d\d "https?:\/\/(?:www\.)?(\w[a-zA-Z0-9\-]*\.\w{2,53}(?:\/\w[a-zA-Z0-9\-]*)?)/ && print "Page: $1\nReferrer: $2\n"' access-logs

perl -lne '/GET (\/\w+?) HTTP\/1.0" 200 \d\d\d\d "https?:\/\/(?:www\.)?(\w[a-zA-Z0-9\-]*\.\w{2,53}(?:\/\w[a-zA-Z0-9\-]*)?)/ && print "Page: $1\nReferrer: $2\n"' access-logs > referrers.txt
