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
EXPLAIN ANALYZE SELECT * FROM test2 WHERE alphabet = 'a';
"
