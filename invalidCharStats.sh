#!/usr/bin/env bash
. cbUtil.set light
showWarn.sh  > $MY_TMP.warn
chk $MY_TMP.warn | sort | uniq -c |sort -nr > $MY_TMP.stat
n=`cat $MY_TMP.stat | wc -l`
echo "=== Invalid Character Statistics ==="
echo
echo "Total distinct invalid characters detected: $n"
echo
echo "Character frequency by hex code (source DB encoding):"
echo "Count	Hex"
echo "-------	------"
cat $MY_TMP.stat
