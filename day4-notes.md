# Git



**Version Control System**



It allows to manage multiple versions of documents, programs, websites etc\[data]

Tracks history of all the files, meaning track every change



**Advantages:**

1. Individually: have multiple versions
2. Working with team: concurrent work and merging changes
3. Management of changes in files: who made, when the change has been made, allows people to work together



**Types:**

1. Localized:
   	Useful for individual --> keeps local copy of the files
2. Centralized:

&nbsp;	Server<--> Client:
	server: master repo  --> contains all the version of the code
	client: our local repo



**Distributed VCS:**

Its centralized vcs, where repo is maintained at each and every client unlike traditional approach where repo is present at server only

**Git Commands:**
To initialize repo: git init
To clone repo: git clone <url_with_.git>
Local to remote integration:
	git config --user.name "<user_name>"
	git config --user.email "<user_emailaddress>"
	To add changes: git add . 
	To commit changes: git commit -m "<commit_message>"
	To add origin: git remote add origin
	To Push: git push <url_repo.git>

To Pull the changes to local: git pull
