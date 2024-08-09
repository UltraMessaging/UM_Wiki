#!/bin/sh
# bld.sh - construct table of contents for each page

for F in wiki/*.md; do :
  if egrep "<!-- mdtoc-start -->" $F >/dev/null; then :
    # Update doc table of contents (see https://github.com/fordsfords/mdtoc).
    if which mdtoc.pl >/dev/null; then mdtoc.pl -b "" $F;
    elif [ -x ../mdtoc/mdtoc.pl ]; then ../mdtoc/mdtoc.pl -b "" $F;
    else echo "FYI: mdtoc.pl not found; Skipping doc build"; echo ""; fi
  fi
done

rm -f html/*.html

echo "# Index" >x.md

for F in wiki/*.md; do :
  ./bld_1.sh $F
  echo "* [[`./title2f.pl $F`]]" >>x.md
done

# Make index page
mv x.md index.md
./bld_1.sh index.md
rm index.md
