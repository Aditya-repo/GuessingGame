function check_if_number {
	if [[ $1 =~ ^[0-9]+$ ]]
	    then
		return 1
	fi
	return 0
}

filecount=`ls|wc -l`
echo "Guess the number of files in current directory"
while read -p "yor guess:" number
    do
       check_if_number $number
       if [ $? -eq 0 ]
          then
              echo "enter only numbers"
              continue
       fi
       if [ $number -eq $filecount ]
        then
            echo "congrats correct guess"
            break
        elif [ $number -lt $filecount ]
           then
               echo "guess too low"
        else
               echo "guess too high"
        fi
    done


