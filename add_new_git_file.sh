origin=$(git remote -v | grep push | awk '{print $2}')
echo $origin
result=$(echo $?)
if [ "$result" -eq 0 ]; then
echo "Proceeding to commit new file"
else 
echo "No git hub origin define" 
exit
fi
echo "Please enter your commit msg here"
read msg
git init .
git add . 
git commit -m "$msg"
git push  
