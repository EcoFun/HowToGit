#### I) find all your git repo locally
##### add the following alias to your `.bash_aliases` file (creates it if needed)
```sh
alias locagit="locate */.git|grep --color=never -e '<my_folder_1>' -e '<my_folder_i>'..."
```
SYNOPSIS:
- Where `my_folder_i` are the base names of the folders where you know you have git repositories of interest (the git repo can be subdirectories of course). I do it that way in order to not listing git repo of the system.
- pass as many `-e '<my_folder_1>'` arguments as you have folders with git repo of interests that are not nested in each others.

e.g.:
```sh
alias locagit="locate */.git|grep --color=never -e '06_Projects_experiments' -e '0.1_LudoLibraries'"
```
