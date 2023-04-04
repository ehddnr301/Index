#!/bin/bash

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
VACUUM FREEZE ANALYZE;
"

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
EXPLAIN ANALYZE SELECT date_trunc('day', created_at), avg(scan)
FROM test
WHERE created_at BETWEEN '2017-02-01 0:00' AND '2017-02-28 11:59:59'
GROUP BY 1
ORDER BY 1;
"
