echo "What is the number of files in the current directory?"
echo "Type a number and press enter to continue"
read response
echo "You entered:$response"

# calculate amount of files

count=0
for file in $(ls -a) 
do
  if [ -f "$file" ] 
  then  count=$(expr $count + 1)
  fi
done

# condition check response with count

while [[ $response -ne $count ]]
do
  if  [[ $response -gt $count ]]
  then
     echo "Your guess is too high. Do a new guess: what's the number of files in the current directory?"
     echo "Type a new number and press enter to continue"
  else
     echo "Your guess is too low. Do a new guess: what's the number of files in the current directory?"
     echo "Type a new number and press enter to continue"
  fi
read response
echo  "You entered $response"

done

echo "Congratulation! There are indeed $count files on $(pwd)"
exit
