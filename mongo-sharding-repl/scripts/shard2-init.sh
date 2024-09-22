#!/bin/bash

###
# Инициализируем шард 2
###

docker compose exec -T shard2 mongosh --port 27019 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2:27019" },
        { _id : 1, host : "shard2-mongodb1:27025"},
        { _id : 2, host : "shard2-mongodb2:27026"},
        { _id : 3, host : "shard2-mongodb3:27027"}
      ]
    }
)
exit()
EOF

