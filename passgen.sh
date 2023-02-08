#!/bin/bash
count=0
read -p "Enter the length of password: " n
integer() {
    i=( {48..57} )
    echo -n ${i[$[ $RANDOM % 10 ]]} | awk '{printf("%c",$1)}'
}
smletter() {
    s=( {97..122} )
    echo -n ${s[$[ $RANDOM % 26 ]]} | awk '{printf("%c",$1)}'
}
spchar() {
    sp=( {32..47} {58..64} )
    echo -n ${sp[$[ $RANDOM % 23 ]]} | awk '{printf("%c",$1)}'
}
cletter() {
    c=( {65..90} )
    echo -n ${c[$[ $RANDOM % 26 ]]} | awk '{printf("%c",$1)}'
}
array=( integer smletter spchar cletter )
while ((count<n))
do
    ${array[$[ $RANDOM % 4 ]]}
    ((count++))
done
echo
