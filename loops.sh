#! /bin/bash

number=1

echo "While"
while [ $number -le 10 ]
do
    echo "$number"
    number=$(( number + 1))
done

number=1
echo "Until"
until [ $number -ge 10 ]
do
    echo "$number"
    number=$(( number + 1))
done

echo "For"
for i in 1 2 3 4 5
do
    echo $i
done

echo "For alternative"
for i in {0..20..2} # {start..ending..increment}
do
    echo $i
done

echo "For tradicional"
for ((i=0; i<5; i++))
do
    echo $i
done

echo "Break Statement"
for ((i=0; i<=10; i++))
do
    if [ $i -gt 5 ]
    then
        echo "break on $i"
        break
    fi
    echo $i
done

echo "Continue Statement"
for ((i=0; i<=10; i++))
do
    if [ $i -eq 3 ] || [ $i -eq 7 ]
    then
        echo "continue on $i"
        continue
    fi
    echo $i
done
