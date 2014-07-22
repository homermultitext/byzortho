#!/bin/sh
PERL=`which perl`
SORT=`which sort`
TAIL=`which tail`


MAX=`$PERL -pe 's/,.+//' orthoequivs.csv | $PERL -pe 's/urn:cite:hmt:normalized.//' - | $SORT -n | $TAIL -1`

echo Highest assigned id = urn:cite:hmt:normalized.$MAX

