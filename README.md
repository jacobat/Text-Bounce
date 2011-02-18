Textbounce
==========

Basic sinatra app demonstrating POST and GET.

Install
-------

    git clone ...
    cd textbounce
    bundle
    sqlite3 sinatra_application.sqlite3.db
    CREATE TABLE messages (id INTEGER PRIMARY KEY, message TEXT, created_at DATETIME);
    rackup

Usage
-----

To post:

    curl -d"message=Hello worlds\!\!\!" http://localhost:9292/messages

To read as json:

    curl http://localhost:9292/messages.json

To get HTML:

    curl http://localhost:9292/