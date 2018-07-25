# Git

```
# keep commits in order for github
$ git rebase origin/master --ignore-date
```

```
# push with just a little force
$ git push --force-with-lease
```

```
# use text edit as editor
$ git config --global core.editor "open -n -w"
```

```
# order commits by date - for realz
$ git rebase origin/master -x 'git commit --amend --no-edit --date="`date`" && sleep 1'
```