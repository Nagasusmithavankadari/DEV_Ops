**Git Commands:**
To initialize repo: git init
To clone repo: git clone <url_with_.git>
Local to remote integration[new repo creation with push from commads]:
	git config --user.name "<user_name>"
	git config --user.email "<user_emailaddress>"
	To add changes: git add . 
	To commit changes: git commit -m "<commit_message>"
	To add origin: git remote add origin
	To Push: git push <url_repo.git>

To Pull the changes to local: git pull

To Push to the existing empty repo:
	git remote add origin <repo_url>
	git branch -M main
	git push -u origin main

To view logs of git: git log
To view logs of git with commit id in single line: git log --oneline
To view the changes in the commit: git show <commit_id>: you will get commit id info from git log
To create a branch: git branch <branch_name>
To create a copy of main/master to a branch: git branch -c <branch_name> --> it copies the data from default to newly created branch
To list all branches: git branch -a 
To switch to that branch: git checkout <branch_name> or git switch <branch_name>
To push all the branches in a single go: git push --all origin
To revert the uncommitted[meaning not even added using git add --> staged] the changes: git checout filename
To check the difference in the content: git diff <file_name> or git diff
To check the differences between 2 commits: git diff <latest_commit>..<previous_commit>
To check the difference in staged content/file: git diff --cached <file_name>
To unstage the file: git restore --staged <file_name>
To revert back to previous commits: git revert <commit_id>
	incase if you wanted to commit back to previous commit: git revert HEAD [goes to previous commit]
	however above revert will create a new commit id[meaning it stores the history]
	To avoid that new creation of commit id: git reset --hard <commit_id_which_you_wanted_to_revert>
To add tag : git tag <tag_name> <commit_id>, if you don't give the commitid, it will create tag for current commit
To view tags: git show tag
To add annoted tag: git tag -a <tag_name> -m "<message>" <commit_id>
To Push a single tag: git push origin tag <tagname>
To Push all tags: git push --tags