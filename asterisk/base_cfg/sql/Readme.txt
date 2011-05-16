MySQL Stuff
-----------

This is some MySQL stuff that you might find useful.

a. The CDR and vm_messages tables structure were taken from the documentation in the Asterisk 1.8 source directory.

I added an index to it using the 'uniqueid' field (for CDR table) and 'msgnum' (for vm_messages table) in order to gain speed if/when I decide to
retrieve some information from them.

See: 
Benefits Of Indexing, MySQL, 4th Edition, 
Pag. 304. by Paul DuBois 
(Seriously, you should consider reading this book)

Note:
First use the SQL file that creates the databases, then the one that create the user.

I'll be adding realtime configuration soon.
