###### Removing unused branches

    $ git branch | xargs git branch -d


###### Resetting a branch

    $ git reset --hard HEAD~2 // to two commits before

or

    $ git reset --hard [commit hash]

[more](http://git-scm.com/docs/git-reset)


###### Backing up a branch

When unsure if some action will be successful, do the following:

    $ git branch temp
    $ [unsuccessful attempt at something]
    $ git reset --hard temp


###### Show more than one ref in gitk

    $ gitk HEAD @{u}  # HEAD: local tip, @{u} upstream


###### Resolve revision aliases

    $ git rev-parse@{u}
    [commit hash]


###### Unstage a commit

    $ git reset HEAD^ (->unstaged)
    $ git reset --soft HEAD^ (->staged)
    $ git reset --hard HEAD^ (->abandone)
    $ git reset [commit] (->unstaged all following)