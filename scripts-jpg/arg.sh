empty_string="Hello"
echo $0
echo $1
echo $2
echo $3
echo 'no of args:' $#

if [ -z "$4" ]; then
	echo '$4 empty'
fi

if [ "$4" == "$empty_string" ]; then
	echo $4 'world!';
fi

if [ "$2" == "jen" ]; then
   echo $2 'thanisch';
fi

echo $([ "$2"=="jen" ])

exit 0