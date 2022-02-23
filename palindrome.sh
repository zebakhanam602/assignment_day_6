# Function to Check Palindrome


count=0
checkPalindrome()
{
        num=$1
        rev=0
        original_num=$1

        while(( $num != 0 ))
        do
        rem=$(( $num%10 ))
        rev=$(( $rev*10 + $rem ))
        num=$(( $num /10))
        done

        if(( $original_num == $rev ))
        then
        echo $original_num
        (( count++ ))
        fi
}


for (( i=11 ; i<=10000; i++ ))
do
        checkPalindrome  $i
done

echo "Number of palindrome numbers: " $count
