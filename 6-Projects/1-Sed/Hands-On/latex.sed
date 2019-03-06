#!/bin/sed

# Add the following to the top of the document:
#   \documentclass{article}
#   \usepackage{hyperref}
#   \begin{document}
# Encase the first line in a /title{NAME} tag
1s/(.+)/\\documentclass{article}\n\\userpackage{hyperref}\n\\begindocument\n\\title{\1}/

# Convert all sections starting with Roman numerals to use \section{NAME}; 
# do not keep the Roman numerals (Roman numerals use the following letters: I V X L C D M)
s/^[IVXLDCM]+\. (.+)/\\section{\1}/

# Encase all lines starting with [root@red-hat ~]# in code blocks (\begin{verbatim} and \end{verbatim};
# note that the ~ can be alternate text
# There are some instances where two lines start with [root@red-hat ~]# immediately after one another; 
# use sed's N functionality to write this portion of the script
/\[root@red-hat.+?\]#/ {
N
s/(\[root@red-hat.+?\]#.+(\n\[root@red-hat.+?\]#.+)?)/\\begin{verbatim}\n\1\n\\end{verbatim}/
}

# Any lines beginning with four spaces or a tab should be contained in code blocks;
s/(\t|    )(.+)/\\begin{verbatim}\n\2\n\\end{verbatim}/

# Format any file names ending with .cf to use /texttt{TEXT} tags
s/(\b\w+\.cf\b)/texttt{\1}/g

# Change anything encased in backtics to use /texttt{TEXT} tags
s/`(.+?)`/\\texttt{\1}/g

# At the end of the document add \end{document}; this can be done by using $ a <APPENDED TEXT>
$ a \\\end{document}
