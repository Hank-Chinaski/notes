###### Removing unused branches

    $ git branch | xargs git branch -d


###### Resetting a branch

    $ git reset --hard HEAD~2 // to two commits before

or

    $ git reset --hard [commit hash]

[more](http://git-scm.com/docs/git-reset)


###### Make a backup of a branch

When unsure if some action will be successful, do the following:

    $ git branch temp
    $ [unsuccessful attempt at something]
    $ git reset --hard temp
