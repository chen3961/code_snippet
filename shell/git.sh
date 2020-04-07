# delete local branch
git delete -d ${branch_name}
# delete remote branch
git push origin --delete ${branch_name}
