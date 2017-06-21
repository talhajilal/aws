echo "Please enter your commit msg here"
read msg
git init .
git add . 
git commit -m "$msg"
git push  
