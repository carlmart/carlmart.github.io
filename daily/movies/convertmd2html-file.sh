#!/bin/sh
DT=`date +%m-%d-20%y`

if [ $# -lt 1 ] ; then
    echo "convert markdown to html file lists"
    echo
    echo "usage $0 filename.md "
    exit 1
else
    fname=$1
    # echo $fname
    fn="${fname%.*}"
    sed 's/ - \[ '/[/g $fn.md | sed 's/()'/\(LINK\)/g | sed 'G' $fn.md > tmp.md # -G add blank line
    pandoc -i tmp.md  | sed 's/<li>'//g | sed 's/<\/li>'/'<br>'/g  | sed '/<\/ul'/d | sed 's/<p>'//g | sed 's/<\/p>//g' > $fn.html
    rm tmp*.*
    echo "<h2 style="color:white;" >   TITLE  </h2>"
    sed -i '<h2 style="color:white;" >   TITLE  </h2>' $fn.html
    echo "created $fn.html"
fi
