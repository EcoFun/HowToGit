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
```
git init
```

### I.3) Add the adress of the remote server(s)
Here the idea is to say GIT where it should transfer your project (i.e. where the project is remotely saved).
```
git remote add <remote_name> <ssh of remote project adress>
```

you can have several remotes (e.g. one on github, one a local server, one on any other server). The first remote is usually called `origin` but there is no obligation and if you prefer, you can call it with a name that is more relevant to you (e.g. `github`, `ecofun`, `my_remote_server` etc.).
For each repo, I personnaly call the EcoFun github `ecofun` and my personal github `github`. If you want, you can have saves on several servers (good for backups).

Few example:

- `git: remote add github git@github.com:EcoFun/mon_projet_a_la_noix.git`	# note the ssh adress
- `git remote add ecofun git@github.com:EcoFun/seq2ali.git`
- `git remote add local_server my_login@myserver.angers.inra.fr:/path/to/git/<project>/<repo>.git`

Note the ssh adresses and the presence of the `.git` suffix.

### I.4) Create your initial commit
**WARNING**: first thing first, don't forget to create your initial commit locally.

```
git add . --all
git commit -m "Initialization commit"
```

### [ I.4.5) Send your ssh public key to github ]
If it's the first time your use `git` on a computer (i.e. you need to redo it for any new computer), you will need to 'register' your computer on github.<p>
It's not really registering but you need to specify your ssh public key to the server. It's not an obligation but it is very useful in order to not be asked your password each time you send or retrieve info to github!!!<p>
A different procedure exists if you want to use thet github https adress of your github repo, but in this case you will have to specify your password each time you `git push` or `git pull`.

The procedure for Linux users is described here: 
https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key

Alternatively, you can generate your ssh keys just locally and specify it to github on this page: 
https://github.com/settings/ssh
(push the 'New SSH key' button).

More info on ssh keys here (French doc): 
https://openclassrooms.com/courses/reprenez-le-controle-a-l-aide-de-linux/la-connexion-securisee-a-distance-avec-ssh

For Windows users, I don't know how to do that, so please dig the doc...


### I.5) Synchronize local and remote repo
When you initialize the Github repo, you may have created different files (a readme.md, a licence file...). In this case, it's goo to synchronize both repo before anything else.

Pull the remote repo a first time f(you may need to specify the branch as well).
Generic command:
```git pull <remote_name> <branch>```

For our `ecofun` repo : <p>
```git pull ecofun master```

Note that the first branch is always  `master`.

### I.6) Set the default remote
As I said, you may have several remote, but have a preferred one and the othe rjust for backup once in a while. In this case, let's just set up the default remote:

```git branch --set-upstream-to <remote>/<branch>```

With our example:
```git branch --set-upstream-to ecofun/master```

Note: at that point, you have not yet send any data on github, so that ecofun/master does not exist if you haven't set either a `.gitignore` or a licence file.
In this case you will meet the following error:
```
$ git branch --set-upstream-to github/master
error: the requested upstream branch 'github/master' does not exist
hint: 
hint: If you are planning on basing your work on an upstream
hint: branch that already exists at the remote, you may need to
hint: run "git fetch" to retrieve it.
hint: 
hint: If you are planning to push out a new local branch that
hint: will track its remote counterpart, you may want to use
hint: "git push -u" to set the upstream config as you push.
```
If so, just define the default branch after your first push (see II.4).

---

## II) Work locally and push modifications to remote repo

### II.1) Modify your code locally
**IMPORTANT**: Before to start modifying your code locally, it's good practice to always `pull` the remote just in case someone else made changes to the project!

Then do modify whatever you want!

### II.2) Add your modified file to a database
```git add . --all```

### II.3) commit the changes
```
git commit -m "a message describing the changes here
 - can be on several lines
 - it's a good habit to properly describe changes"
```

To add file and commit simultaneously (note: does not include newly created file contrary to `git add . --all`)<p>
```git commit -am "my message"```

### II.4) finally push the change onto the remote
The basic command is:<p>
```git push <remote> <branch>```

The initial branch is always `master`, so basically:<p>
```git push github master```

Now you can shorten this command line. The first time, you have to define the default remote server (as I said you may have several - see I.6):<p>
```git push --set-upstream origin master```

Then after you just need to do type:<p>
```git push```

---

## III) list of other interesting commands

- `git log` -> list all commit done so far
- `git status` -> tell you on which branch you are, which files have been modified and if you have commit in advance relatively to the default remote
- `git diff` -> show you the changes in the files (very nice)

