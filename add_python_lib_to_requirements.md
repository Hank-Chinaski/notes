# Add python lib to requirements

```
$ pip install fogbugz --download .
$ scp fogbugz-0.9.5.zip [user]@[server]:/packages
# add package to requirements.txt: fogbugz==0.9.5
# ...eventually add dependencies
$ . ./scripts/develop.sh --refresh-venv
```