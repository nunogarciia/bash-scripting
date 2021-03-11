#! /bin/bash

count=10

: '
    -eq     -> Equal
    -ne     -> Not Equal
    -gt     -> Greater Than:
        use the statement like this:    if [ $count -gt 10 ]
        or like this:   if (( $count > 9 ))
    -lt     -> Less than

'

if (( $count < 9 ))
then
    echo "First condition is true"
elif (( $count > 9 ))
then
    echo "Second condition is true"
else
    echo "The condition is false"
fi

#               And operator
age=20

# One way
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi
# Another way
if [[ "$age" -gt 18 && "$age" -lt 40 ]]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi
# Another way
if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

#           or Operator

if [ "$age" -lt 18 -o "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi
# Another way
if [[ "$age" -lt 18 || "$age" -lt 40 ]]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi
# Another way
if [ "$age" -lt 18 ] || [ "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

#           case Statement
car=$1

case $car in
    "BMW" )
        echo "It's BMW" ;;
    "Mercedese" )
        echo "It's Mercedes" ;;
    "Toyota" )
        echo "It's toyota" ;;
    "Honda" )
        echo "It's Honda" ;;
    * )
        echo "Unknown car name" ;;
esac