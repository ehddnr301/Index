#!/bin/bash

start=$(date +%s)

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
DROP INDEX alphabet_idx;
"

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "
CREATE INDEX alphabet_idx ON test2 USING brin (alphabet);
"

end=$(date +%s)

runtime=$((end-start))
echo "Execution time: ${runtime} seconds"

