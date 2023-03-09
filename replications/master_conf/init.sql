CREATE DATABASE replication_demo;

\connect replication_demo

CREATE TABLE students (
    number TEXT PRIMARY KEY,
    name TEXT,
    badge INT,
    religion TEXT,
    created_at DATE
);

CREATE ROLE replicator REPLICATION LOGIN PASSWORD 'pass1234';
GRANT ALL ON students TO replicator;
