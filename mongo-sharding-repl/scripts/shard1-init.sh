#!/bin/bash

###
# Инициализируем шард 1
###

docker compose exec -T shard1 mongosh --port 27018 <<EOF
rs.initiate(
    {
      _id : "shard1",
      members: [
        { _id : 0, host : "shard1:27018" },
        { _id : 1, host : "shard1-mongodb1:27021"},
        { _id : 2, host : "shard1-mongodb2:27022"},
        { _id : 3, host : "shard1-mongodb3:27023"}
      ]
    }
)
exit()
EOF

