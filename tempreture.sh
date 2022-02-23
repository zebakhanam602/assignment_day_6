# Temperature conversion
celToFar()

{

       echo "Converting " $1 "from Celsius to Fah. "
       temp_in_far=$( echo " scale=2; $1 * 9/5 + 32" | bc  )
       echo $1 " in Far. is " $temp_in_far 

}
farToCel()
{
       echo "Converting " $1 " from Far to Cel .."
       temp_in_cel=$( echo " scale=2;  ($1 - 32) * 5/9" | bc  )
       echo $1 " in Celsius is " $temp_in_cel
}

read -p "Enter 1 to convert from Cel to Far or Enter 2 to convert from Far to Cel " input

case  $input in

       1)  read -p "Enter temperature in Celcius " temp

            celToFar $temp
           ;;

       2) read -p "Enter temperature in Far. " temp

            farToCel $temp

           ;;
       *) echo "Error: Invalid Input!"
esac
