#!/bin/bash

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
SELECT pg_size_pretty(pg_relation_size('alphabet_idx'));
"

