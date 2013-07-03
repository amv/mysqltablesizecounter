mysqltablesizecounter
=====================

## What?

1. Loops through all tables in all databases on the local Mysql server in alphabetical order
2. Executes a "select count(*) from TBL" for each table and prints out the result

The script kind of expects to be run as root on Mysql servers. Otherwise it starts to ask all
kinds of annoying things like usernames and passwords.

Uses the following executables: perl, mysql, grep, cut, sort

## Why?

Sometimes you want to make sure that Mysql instances that are supposed to have the exact same
data share at least some characteristics, like for example the table row counts.

So I just run this script at about the same time on all of the Mysql instances, pipe the result
into a file and then run a diff between those files. Differences in the "information_schema"
and possibly in the "mysql" tables are probably not critical. Other tables might have slight
differences if you happen to insert data while running the command. Run again to check or
inspect further by hand if you are not sure.

## License

I don't really care but I'll give you the MIT one if you do:

http://opensource.org/licenses/mit-license.php
