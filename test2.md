# Ansible & Gitlab learning Workshop

Keynotes, 

1- Git usage

2- Ansible


	a- Ansible Add-Hoc commands
	b- Ansible playbooks
	c- Ansible role base playbooks

## (1) Git Commands

### Step 1:
Create new project on gitlab, for this demo I select [workshop(1)].....[workshop(n)]..

git clone http://sdsi-ansible-north.mgmt.vf.rogers.com/talha.jilal/workshop1.git

### Step 2:

switch to cloned directory, 

	cd workshop1

Create some files,
	touch Somefile

### Step 3:

Push to origin repository.

	git add .

	git commit -m "File name"

	git push origin master

	Enter user name and password.

## Git branches.

## switching between branches and creating new branches.
 
1- Verify current branch.

	git branch

	*master

2- Create new branch.

	git checkout -b dev

3- Now check newly created branch.

	git branch

	master

	*dev


Note: Now we are in git dev branch, lets commit and checkout code in dev branch.

4- Push code to dev branch, and verify.

	git add .

	git commit -m "Some message"
	
	git push origin dev

	git branch

	* dev
	  master

5- Merging branches. ( Promoting code between master and dev ).

#  Let's checkout in dev branch, and after changes commit and merge with master branch.  ( Practice merge ).

1- first go to dev branch.

	git checkout dev


2- verify branch name.

	git branch 

	master 

	*dev


3- Push changes to dev branch ( Just for demo ) 

	git add .

	git commit -m "New changes" 

	git push origin dev 


5- Merge dev changes with master branch. 

6- Checkout (switch) to git master branch 

	git checkout master

	git branch

	  dev

	* master


7- merge "dev" changes on "master branch.

	git merge dev


8- Run this "add, commit, push" part to send changes to origin.

	git add .

	git commit -m "Merging dev to master" 

	git push origin master 

	enter user name and password.



	[NOTE] Delete branch from remote origin and local origin.
	
Remote origin 

	git push origin --delete branch_name

Local directory

	git branch -d branch_name

# Introduction to git tag. ( A clone of branch ),

	[NOTE]: Tag always belong to branch, if you are in a master branch and run the tag procedure. Tag will be create for master branch vice versa.
1- Create a tag.
	git tag tag-name

2- Push tag to origin.
	git push --origin

3- How can we list available tags ater first clone from master repository.

	git tag -l 

4- How to verify current tag name.

	git describe –tags

5- How to delete a tag.

	git tag –delete tag_name 

	git tag -d list

6- Push changes

	git push origin :refs/tags/REF100
