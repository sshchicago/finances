MONTH=`date +%m`
YEAR=`date +%Y`

ledger -f $YEAR-$MONTH.dat b > cash.txt

if [ $? -eq 0 ]
then git add -A; git commit -m "looks good to me!"; git push origin master
fi
