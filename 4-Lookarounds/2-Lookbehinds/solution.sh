grep -P '(?<=<li><code>).+?(?=<\/code>)' study-guide.html
grep -Po '(?<=<li><code>).+?(?=<\/code>)' study-guide.html

grep -P '(?<!<li><code>)(?<=<code>).+?(?=<\/code>)' study-guide.html
grep -Po '(?<!<li><code>)(?<=<code>).+?(?=<\/code>)' study-guide.html
