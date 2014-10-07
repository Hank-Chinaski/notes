###### Removing unused branches

    $ git branch | xargs git branch -d


###### Make a backup of a branch

When unsure if some action will be successful, do the following:

    $ git branch temp
    $ [unsuccessful attempt at something]
    $ git reset --hard temp
