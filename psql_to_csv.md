# PSQL to CSV

```
horst@machine:~$ psql database user
database=#\o /some/path/my.csv
database=# \a
Output format is unaligned.
database=# \f ;
Field separator is ";".
database=# select * from table;
database=#
database=#\o
```