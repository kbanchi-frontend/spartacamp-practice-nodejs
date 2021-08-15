create table items(id smallint, name varchar(100));

INSERT INTO items(id,name) VALUES (1,'Apple');
INSERT INTO items(id,name) VALUES (2,'Lemon');
INSERT INTO items(id,name) VALUES (3,'Strawberry');

-- MySQL8.0では認証方式に変更が入っているがNodeJSのmysqlライブラリが未対応のため
-- パラメータをcaching_sha2_password  → mysql_native_password へ修正
-- ALTER USER '[user]]'@'[host]]'IDENTIFIED WITH mysql_native_password BY '[password]';
ALTER USER 'sampleapp'@'localhost'IDENTIFIED WITH mysql_native_password BY 'sampleapp';