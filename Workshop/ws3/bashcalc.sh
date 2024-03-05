#/bin/bash

# check if all variables are set
if  ( [ -z "$1" ] && [ -z "$2" ] && [ -z "$3" ] ); then
	echo "Insufficient or invalid arguments provided. Exiting...."
	exit 1
	
else
	if ! ( [[ $1 =~ [asmde]{1} ]] && [[ $2 =~ [0-9]+ ]] && [[ $3 =~ [0-9]+ ]] ); then
        # check input 2 and 3 if they are floating point
                echo "worng parameter type"
                exit 1
        fi
	#calculation for every possibles output
	a=`echo "($2+$3)" | bc -l`
        s=`echo "($2-$3)" | bc -l`
        m=`echo "($2*$3)" | bc -l`
        d=`echo "($2/$3)" | bc -l`
	e=`echo "($2^$3)" | bc -l`
	#e=$(echo $1 $2 | awk '{printf "%.2f", $1**$2}')
	#printing setected calculation result 
	case $1 in
		a) echo $(printf %.2f $a) ;;
		s) echo $(printf %.2f $s) ;;
		m) echo $(printf %.2f $a) ;;
		d) echo $(printf %.2f $d) ;;
		e) echo $(printf %.2f $e) ;;
		*) echo "error" && exit 1;;
	esac
fi
exit 0
