Database Server
---


Instructions
---

```
$ git clone https://github.com/aballal/database_server.git
$ cd database_server
```

`$ rackup`, then visit 'http://localhost:4000/' in a browser. A message of 'Database Server Tech Test' confirms the server is running.

Requirements
---

* When the server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory.
* When the server receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey
