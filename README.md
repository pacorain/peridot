# Peridot

**Peridot** (named after the [cartoon character](https://en.wikipedia.org/wiki/List_of_Steven_Universe_characters#Peridot)
is my old MacBook converted into a script server. I mostly plan on putting scripts on here to update my personal database (Beach City)
with data from different APIs.

Each bash script in the root folder runs some of the scripts in the sub-folders at specific schedules.
For example, `every6h.sh` is set in cron to run every 6 hours.

If I can get the data in a format [SQL Workbench/J](http://www.sql-workbench.eu) can understand, I
will most likely just use the Import or Copy capabilities of the app. I have my environment set up
so that `wbconsole` launches the SQL Workbench console.


## Current project:

[Messages](https://github.com/zbruh/peridot/messages)
