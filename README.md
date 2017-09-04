Database Server
---

The project implements the following requirements.

#### Requirements

* When the server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory.
* When the server receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey

Instructions
---

```
$ git clone https://github.com/aballal/database_server.git
$ cd database_server
$ bundle
```

`$ rspec` for tests

`$ rackup`, then visit
  * http://localhost:4000/ - A message of 'Database Server Tech Test' confirms the server is running
  * http://localhost:4000/set?name=Ruby - The key 'name' is associated with value 'Ruby' and stored in memory. Page displays 'Ruby'
  * http://localhost:4000/get?key=name -  The value associated with key 'name' is retrieved from 'memory'. Page displays 'Ruby'
  * http://localhost:4000/set - Shows a message that params are missing
  * http://localhost:4000/get?key=name2 - Shows a message that key isn't found

Note: If a key already exists there is no error raised. This is deliberate as value of the existing key is updated instead.
