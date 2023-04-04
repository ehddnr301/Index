#!/bin/bash

start=$(date +%s)

# docker exec -it postgresql \
# psql \
# -U postgres \
# -d index_test_db \
# -c "INSERT INTO test (scan, created_at)
#     SELECT random(), x
#     FROM generate_series('2012-01-01 0:00'::timestamptz,
#     '2020-01-01 21:42:20'::timestamptz, '2 seconds'::interval) x;
# "

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "INSERT INTO test2 (alphabet, created_at)
    SELECT
    chr(97 + floor(random() * 26)::integer),
    x
    FROM generate_series(
    '2012-01-01 0:00'::timestamptz,
    '2020-01-01 21:42:20'::timestamptz,
    '2 seconds'::interval
    ) AS x;
"
 
end=$(date +%s)

runtime=$((end-start))
echo "Execution time: ${runtime} seconds"