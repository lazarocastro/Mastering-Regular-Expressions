#!/usr/bin/perl

print "\\documentclass{article}\n\\usepackage{hyperref}\n\\begin{document}\n";

while (<>) {
  s/<[Hh]1[^>]*>(.+?)<\/[Hh]1>/\\title{\1}\n/;
  s/<[Hh]2[^>]*>(.+?)<\/[Hh]2>/\\section{\1}\n/;
  s/<[Hh]3[^>]*>(.+?)<\/[Hh]3>/\\subsection{\1}\n/;
  s/<ul>/\\begin{itemize}/;
  s/<\/ul>/\\end{itemize}/;
  s/<li>/\\item /;
  s/<\/li>//;
  s/<em>(.+?)<\/em>/\\textit{\1}/g;
  s/<code>(.+?)<\/code>/\\texttt{\1}/g;
  s/<a href="(.+?)">(.+?)<\/a>/\\href{\1}{\2}/;
  if (/\\item <p>/) {
    s/<\/?p>//g;
  }
  s/(?<!\\item )<p>(.+?)<\/p>/\\begin{verbatim}\n\1\n\\end{verbatim}/;
  print;
}

print "\\end{document}\n";
