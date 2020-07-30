#! /bin/bash
# this a a comment


##########################################################################

# chmod -(w, r, x,...) file:  remove read/write permission of a file
# chmod +(w, r, x,...) file:  allow read/write permission of a file
# ls -al: see more detail



##########################################################################


# read: -a for storing input as array, -p for inline, -s for silence

#read -p "Enter: " input
#echo "the input: " $input
#echo -n "Enter: "
#read -a array_input
#echo "typed: ${array_input[0]}, ${array_input[1]} "



##########################################################################


# arg: $1, $2, $3,... 
#echo $1 $2 $3

# store args to array
#args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]} 
#echo $@

#num of args
#echo $#



##########################################################################  

# -e: if the file exist; -f: if the file exist and regular or not; -d: if directory exist;
# -c: character special file; -b: block/binary special file;
# -s: if file is empty; -r: read permission; -w: write permission; -x: executable permission;

#echo -n "Enter: "
#read input

#if [ -e  $input ]
#then
  #echo "$input found"
#else if
#then
  #...
#else
  #echo "$input not found"
#fi



##########################################################################

#num1=20
#num2=5
#num3=20.5

#echo $(( num1 + num2  ))   #echo $(expr $num1 + $num2 )
#echo $(( num1 - num2  ))   #echo $(expr $num1 - $num2 )
#echo $(( num1 * num2  ))   #echo $(expr $num1 \* $num2 )
#echo $(( num1 / num2  ))   #echo $(expr $num1 / $num2 )
#echo $(( num1 % num2  ))   #echo $(expr $num1 % $num2 )


# arithmetic w/ floating pts
# using bc; 
# scale=2;  for num of decimal place
# -l called math library for sqrt

#echo "20.5+5" | bc
#echo "scale=2;20.5/5" | bc
#echo "$num3+$num2" | bc

#num4=27

#echo "scale=2;sqrt($num4)" | bc -l
#echo "scale=2;$num1^$num2" | bc -l



##########################################################################

# array
#my_list=('dog' 'cat' 'mouse')

# append new element 
#my_list[3]='bunny'

# remove element
#unset my_list[2]

#echo "${my_list[@]}"
#echo "${!my_list[@]}"   #echo index 
#echo "${#my_list[@]}"   #echo len of array


##########################################################################

# while loop
#n=1

#while [ $n -le 10 ]  #(( $n <= 10 ))
#do
#	echo "$n"
#	(( n++ ))    #n=$(( n+1 ))
#done

#############################
# read file w/ loop

#while read p 
#do
#       echo $p
#done < compare.txt


#cat compare.txt | while read p
#do
#	echo $p
#done


#while IFS= read -r line
#do
#	echo $line
#done < compare.txt


##########################################################################

# for loop

#for (( i=0; i<5; i++ ))
#do
#	echo $i
#done


#for i in ls pwd date
#do
#	echo "--------------------$i------------------------"
#	$i
#done


##########################################################################

# function

#msg()
#{
#	echo "need to provide an argument"
#}

#is_file()  
#{
#	local file="$1"
#	[[ -f "$file" ]] && return 0 || return 1 
#}

#(( $# == 0 )) && msg

#if ( is_file "$1" )
#then
#	echo "File found"
#else
#	echo "File not found"
#fi


##########################################################################


# select loop
#select i in dog cat mouse bunny
#do
#	case $i in
#	dog)
#	  echo dog selected ;;
#	cat)
#	  echo cat selected ;;
#  	mouse)
#          echo mouse selected ;;
#  	bunny)
#         echo bunny selected ;;
#	*)
#	  echo "Not the choice"
#        esac		
#done


##########################################################################

# until loop

#n=1

#until (( $n >= 10 ))    #false then execute the body
#do
#	echo $n
#	(( n++ ))
#done


##########################################################################

# pattern (similar to regex):
#[a-z]
#[A-Z]   #if doesn't work, try LANG=C (LANG indicates the lang/locale and encoding)
#[0-9]
#? : any character
#* : for string?

##########################################################################





























