origin=$(git remote -v | grep push)
echo $origin
result=$(echo $?)
if [$result -lt 1]; then
echo "Proceeding to commit new file"
else 
echo "No git hub origin define" 
exit
echo "Please enter your commit msg here"
read msg
git init .
git add . 
git commit -m "$msg"
git push  
