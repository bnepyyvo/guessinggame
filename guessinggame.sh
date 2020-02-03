dir_num=$(ls -l | grep  ^- | wc -l)

function compare {
	if [[ $1 -eq $dir_num ]]
	then
		echo "correct"
		finish=1
	elif [[ $1 -gt $dir_num ]]
	then 
		echo "greater"
	else
		echo "lessser"
	fi
}

finish=0

while [[ $finish -eq 0 ]]
do
	echo "guess number of files in directory:"
	read input
	compare $input
done
