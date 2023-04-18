DROP TABLE IF EXISTS WINNER_RESULT;
DROP TABLE IF EXISTS PLAYER_RESULT;
DROP TABLE IF EXISTS GAME_RESULT;

CREATE TABLE GAME_RESULT
(
    id          INT         NOT NULL AUTO_INCREMENT,
    trial_count INT         NOT NULL,
    created_at  DATETIME    NOT NULL default current_timestamp,
    PRIMARY KEY (id)
);

CREATE TABLE PLAYER_RESULT
(
    id       INT         NOT NULL AUTO_INCREMENT,
    game_id  INT         NOT NULL,
    name     VARCHAR(10) NOT NULL,
    position INT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (game_id) REFERENCES GAME_RESULT (id)
);

CREATE TABLE WINNER_RESULT
(
    id      INT         NOT NULL AUTO_INCREMENT,
    game_id INT         NOT NULL,
    winner  VARCHAR(10) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (game_id) REFERENCES GAME_RESULT (id)
)

