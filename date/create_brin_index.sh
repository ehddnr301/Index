#!/bin/bash

start=$(date +%s)

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
DROP INDEX created_at_idx;
"

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
CREATE INDEX created_at_idx ON test USING brin(created_at);
"

end=$(date +%s)

runtime=$((end-start))
echo "Execution time: ${runtime} seconds"

