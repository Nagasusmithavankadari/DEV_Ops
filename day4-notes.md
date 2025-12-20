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

Git SSH Login to Github:
***Steps:***
	1. Open Git
	2. Delete any ssh keys if existing [incase new user and this keys you are not using anywhere]: rm -rf .ssh/*
	3. Create new ssh key: ssh-keygen 
	4. Copy the .ssh/id_rsa.pub
	5. Open Github --> Settings --> SSH and GPG keys --> New Ssh key --> add title --> Paste the public key which you have copied
	6. Now SSH with github has been completed, you could clone any public repo using ssh url of the repo

**Git Tags:**
Semantic Version: Major_release.minor_release.version --> now-a-days every software will follow this
