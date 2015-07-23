#!/bin/sh
PERL=`which perl`
SORT=`which sort`
TAIL=`which tail`


MAX=`$PERL -pe 's/,.+//' orthoequivs.csv | $PERL -pe 's/urn:cite:hmt:byzortho.//' - | $SORT -n | $TAIL -1`

echo Highest assigned id = urn:cite:hmt:byortho.$MAX

