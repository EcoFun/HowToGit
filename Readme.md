Getting Started
============

Download and install git
-----------
The sources are on https://git-scm.com/downloads

Just follow the instructions for installation


Welcome on the GIT
-----------

Once you been to the github website, downloaded it and made yourself an account, 
you can watch a 15 min video to get a class on the basic commands
This is just one example! http://www.youtube.com/watch?v=LXoWxrTdXkM

It even offers a online version of the GIT prompt window:
http://try.github.io/levels/1/challenges/1

this tutorial is super easy to follow along with.


Resources
------------
Here is an inetresting website (in French) but probably with a limited number pages you can read a day):
https://openclassrooms.com/courses/gerez-vos-codes-source-avec-git

This book is free and can be downloaded from the site below. 
http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository

**See below for the basics**

__________

Basics: Initialize a git project
=============

## I) Initialize the git repo locally (i.e. on your PC)

### I.1) Create a new repository on github
Push the `new repository` button on [EcoFun git](https://github.com/EcoFun).

Give a name to the repo. See few example on the [EcoFun git](https://github.com/EcoFun).

Here let's call it `my_repo`.

### I.2) Initialize the git repo on your PC
Create the folder for your repository and give it a relevant name. Here, let's call it `my_repo.git`.

Go within that folder, then type:<p>
```git
git init
```

### I.3) Add the Adress of the remote server where the project is
`git remote add <remote_name> <ssh of remote project adress>`

you can have several remotes (e.g. one on github, one a local server, one on any other server). The first remote (<remote_name>) is usually called `origin` but there is no obligation and if you prefer, you can call it with a name that is more relevant to you (e.g. `github`, `ecofun`, `my_remote_server` etc.)

for example:

- `git: remote add github git@github.com:EcoFun/mon_projet_a_la_noix.git`	# note the ssh adress
- `git remote add ecofun git@github.com:EcoFun/seq2ali.git`
- `git remote add local_server my_login@myserver.angers.inra.fr:/path/to/git/<project>/<repo>.git`

Note the ssh adresses and the presence of the `.git` suffix.

### I.4) Create your initial commit
**WARNING**: first thing first, don't forget to create your initial commit!

`git add . --all`
`git commit -m "Initialization commit"`

### I.5) Pull the repo a first time from the remote (you need to specify the branch as well)
`git pull <remote_name> <branch>`

If you use `ecofun` for <remote_name>: <p>
`git pull ecofun master`

Note that the first branch is always  `master`.

### I.6) Set the default remote
`git branch --set-upstream-to <remote>/<branch>`

`git branch --set-upstream-to ecofun/master`

---

## II) Start modifications locally then push your changes onto the remote server

### II.1) make any change you want to any file
**IMPORTANT**: always think to `pull` from the remote before doing modification in case someone else made some changes to the project!

### II.2) list your modified file to a database
`git add . --all`

### II.3) commit the changes
`git commit -m "a message describing the changes here

 - can be on several lines
 - it's a good habit to properly describe changes"`

To add file and commit simultaneously (note: does not include newly created file):<p>
`git commit -am "my message"`

### II.4) finally push the change onto the remote
The basic command is:<p>
`git push <remote> <branch>`

The initial branch is always `master`, so basically:<p>
`git push github master`

Now you can shorten this command line. The first time, you have to define the default remote server (as I said you may have several):<p>
`git push --set-upstream origin master`

Then after you just need to do type:<p>
`git push`

---

## III) list of other interesting commands

- `git log` -> list all commit done so far
- `git status` -> tell you on which branch you are, which files have been modified and if you have commit in advance relatively to the default remote
- `git diff` -> show you the changes in the files (very nice)

