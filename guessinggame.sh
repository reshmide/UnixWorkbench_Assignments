#!/bin/bash

function matchGuess()
{
       local match=0
       #echo "Calling match Guess"
       if [ $1 -eq $filecount ]
       then
          echo "Wow,you are super-guessed correctly"
          let match=1
       elif [ $1 -lt $(($filecount-10)) ]
       then
          echo "Too low, more files are here.Try again"
          let match=0
       elif [ $1 -gt $(($filecount+10)) ]
       then
          echo "Too high, we don't have so many files.Try again"
          let match=0
       else
          echo "Sorry,not correct.Try again"
          let match=0
       fi
       #echo "Returning from func..."
       return $match
}

echo $(pwd)
filecount=$(ls|wc -l)
echo "Filecount:"$filecount
# Read guess from user
matched=0
while [ $matched -eq 0 ]
do 
  echo "Guess how many files in current directory"
  read guess
  matchGuess $guess
  #echo match Guess has returned $?
  matched=$?
  #echo "While .."
done
