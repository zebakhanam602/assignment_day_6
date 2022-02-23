head=0
tail=0

while(( $head !=11 && $tail !=11 ))
do 
        if(($RANDOM%2 ==0 ))
        then
        (( head++ ))
        else
        (( tail++ ))
        fi
done

echo "Head count: " $head "Tail count: " $tail
