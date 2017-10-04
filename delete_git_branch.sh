To delete a local branch

COPY
git branch -d the_local_branch
To remove a remote branch (if you know what you are doing!)

COPY
git push origin :the_remote_branch
or simply use the new syntax (v1.7.0)

COPY
git push origin --delete the_remote_branch

