YEAR=`date +%Y`

ledger -f fy$YEAR.dat -p "this month" b > cash.txt

if [ $? -eq 0 ]
then git add cash.txt; git commit -m "looks good to me!"; git push origin master
fi
