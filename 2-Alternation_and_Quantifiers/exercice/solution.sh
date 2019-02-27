grep -Po "[a-zA-Z0-9\!\#\$\%\&\'\*\+\-\/\=\?\^\_\`\{\|\}\~\.]*@[a-zA-Z]*\.[a-zA-Z]{2,62}" customer-data.txt | sort > emails.txt
