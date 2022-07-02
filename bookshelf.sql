BEGIN;
SET client_encoding = 'LATIN1';


CREATE TABLE user_chat (
    id SERIAL PRIMARY KEY,
    username text,
    creation_ts timestamp default current_timestamp
);

CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    user_id integer NOT NULL,
    title text NOT NULL,
    progres int DEFAULT 0,
    FOREIGN KEY (user_id)
        REFERENCES user_chat(id)
);

INSERT INTO user_chat (username)
VALUES ('Tom B. Erichsen');

INSERT INTO book (user_id, title, progres) 
VALUES 
(1, 'book 0', 0),
(1, 'book 50', 50);

COMMIT;

ANALYZE user_chat;
ANALYZE book;
