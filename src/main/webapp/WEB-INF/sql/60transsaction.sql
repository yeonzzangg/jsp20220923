USE w3shcools;
CREATE TABLE Bank (
	customerId int PRIMARY KEY,
    balance int
);

INSERT INTO Bank (customerId, balance)
VALUES (1, 10000), (2, 50000);

SELECT * FROM Bank;

-- 송금업무
-- 1번 고객이 2번 고객에게 5000원 송금
UPDATE Bank
SET balance = balance - 5000
WHERE customerId = 1;

UPDATE Bank
SET balance = balance + 5000
WHERE customerId = 2;

-- transaction : 하나의 업무 (여러 UPDATE, SELECT, INSERT, DELETE 쿼리의 묶음)
-- COMMIT : 진행된 내용을 DB에 반영함
-- ROLLBACK : 진행되고 있던 내용을 모두 원복함

-- auto COMMIT 여부 확인
SHOW VARIABLES WHERE Variable_name = 'autocommit';
-- auto COMMIT --> disable
SET autocommit = 0;

-- 송금업무
-- 2번 고객이 1번 고객에세 5000원 송금
UPDATE Bank
SET balance = balance -5000
WHERE customerId = 2;

SELECT * FROM Bank;

UPDATE Bank
SET balance = balance + 5000
WHERE customerId = 1;

COMMIT; -- 오토커밋이 off일때 커밋을 해야만 실제 테이블에 반영됨
-- 커밋 전까지는 내눈에만 바뀐거처럼 보일뿐 실제 반영X ROLLBACK하면 돌아감
-- 커밋후에는 ROLLBACK해도 XXX