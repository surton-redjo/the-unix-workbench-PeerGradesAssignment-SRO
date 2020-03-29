echo "Whatis the number of files in the directory?"
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
echo "Do a new guess: what's the number of files in the directory?"
echo "Type a new number and press enter to continue"
read response
echo  "You entered $response"

done

echo "Congratulation! There are indeed $count files on $(pwd)"
exit
