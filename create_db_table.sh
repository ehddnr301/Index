#!/bin/bash

docker exec -it postgresql \
psql -U postgres \
-c "CREATE DATABASE index_test_db"

docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "CREATE TABLE test ( 
    scan float NOT NULL,
    created_at timestamptz NOT NULL
);"
 
docker exec -it postgresql \
psql \
-U postgres \
-d index_test_db \
-c "CREATE TABLE test2 ( 
    alphabet char(1) NOT NULL,
    created_at timestamptz NOT NULL
);"
 