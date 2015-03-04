MONTH=`date +%m`
YEAR=`date +%Y`

ledger -f $YEAR-$MONTH.dat b > cash.txt

if [ $? -eq 0 ]
then git add cash.txt; git commit -m "looks good to me!"; git push origin master
fi
