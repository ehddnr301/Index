# Test Index

- [참고 블로그](https://americanopeople.tistory.com/313)

## 준비

- `bash start_postgresql.sh`: docker로 .env에 설정된 정보로 postgresql container 시작
- `bash create_db_table.sh`: 테스트에 사용될 database와 table 생성
- `bash insert_sample_data.sh`: sample data 약 1억 2천건 insert

## B-Tree vs Brin 실행 순서

### B-Tree Index 테스트

- `bash date/execute_query.sh`: 인덱스가 없는 상태에서 query 실행계획을 받아봄
- `bash date/create_btree_index.sh`: B-Tree Index를 생성
- `bash date/execute_query.sh`: B-Tree Index가 있는 상태에서 query 실행계획을 받아봄
- `bash date/get_index_size.sh`: B-Tree Index Size를 가져옴

### Brin Index 테스트

- `bash date/create_brin_index.sh`: Brin Index를 생성
- `bash date/execute_query.sh`: Brin Index가 있는 상태에서 query 실행계획을 받아봄
- `bash date/get_index_size.sh`: Brin Index Size를 가져옴

## Alphabet B-Tree vs Brin 실행 순서


### B-Tree Index 테스트

- `bash alphabet/execute_query.sh`: 인덱스가 없는 상태에서 query 실행계획을 받아봄
- `bash alphabet/create_alphabet_btree_index.sh`: B-Tree Index를 생성
- `bash alphabet/execute_query.sh`: B-Tree Index가 있는 상태에서 query 실행계획을 받아봄
- `bash alphabet/get_index_size.sh`: B-Tree Index Size를 가져옴

### Brin Index 테스트

- `bash alphabet/create_alphabet_brin_index.sh`: Brin Index를 생성
- `bash alphabet/execute_query.sh`: Brin Index가 있는 상태에서 query 실행계획을 받아봄
- `bash alphabet/get_index_size.sh`: Brin Index Size를 가져옴