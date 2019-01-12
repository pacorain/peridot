## Messages

Archives messages from iMessage (which also syncs SMS on Peridot) into my SQL databse.

 - Input: SQLite chat.db file in `~/Library/Messages`
 - ETL method: WBCopy function on SQL Workbench

This script currently only captures single messages, not attachments or person data.

I [learned](https://twitter.com/pacoawkward/status/1081964554177912833) that these files store
timestamps as nanoseconds since midnight January 1, 2001. To fix this, I use the SQLite 
`DATETIME(datetimestring, modifier)` function to add seconds and get a SQL timestamp.
