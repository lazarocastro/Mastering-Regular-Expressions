#!/bin/sed

# Remove spaces
s/^\s+//

# Capture the minio name and add text
1s/(.+?):/RUN REPORT: \1\n/

# Remove dashed "----------" separators
/-{10}/d

# Remove all named headings
/^[a-z]+_\|/d

# Remove all "(p)changes:" lines
/p?changes:/d

# 1-Capture pattern: any arguments. Open "{" append
# 2-Append the next line to captured pattern
# 3-Remove the space between both lines
# 4-Close "}" appended section
/^[a-z_]+:/ {
N
s/\n\s+/ /
}

# Remove all lines with the following arguments
/^(__run_num__|duration|name|result|retcode|start_time|fun|id|jid|return|success|_stamp|__state_ran__).+/d

# Change __id__ to ID
s/__id__/ID/g

#Change __sls__ to SLS
s/__sls__/SLS/g

# Change comment lines without losing text
s/comment: (.+)/Comment: \1\n/g
