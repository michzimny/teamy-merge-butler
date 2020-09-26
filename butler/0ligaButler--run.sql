USE 2butlerrr;
DROP TABLE IF EXISTS _matches;
CREATE TABLE _matches AS SELECT * FROM matches;
DROP TABLE IF EXISTS _players;
CREATE TABLE _players AS SELECT * FROM players;
DROP TABLE IF EXISTS _scores;
CREATE TABLE _scores AS SELECT * FROM scores;
DROP TABLE IF EXISTS _teams;
CREATE TABLE _teams AS SELECT * FROM teams;
DROP TABLE IF EXISTS _segments;
CREATE TABLE _segments AS SELECT * FROM segments;


UPDATE _matches SET tabl=tabl+16, homet=homet+32, visit=visit+32;
UPDATE _players SET id=id+600, team=team+32;
UPDATE _scores SET tabl=tabl+16;
UPDATE _teams SET id=id+32;
UPDATE _segments SET tabl=tabl+16, homet=homet+32, visit=visit+32, 
openN=openN+600, openE=openE+600, openS=openS+600, openW=openW+600,
closeN=closeN+600, closeE=closeE+600, closeS=closeS+600, closeW=closeW+600;

USE 0butlerrr;

TRUNCATE TABLE boards;
INSERT INTO boards SELECT * FROM 1srr.boards;

TRUNCATE TABLE rounds;
INSERT INTO rounds SELECT * FROM 1nrr.rounds;

TRUNCATE TABLE matches;
INSERT INTO matches SELECT * FROM 1butlerrr.matches;
INSERT INTO matches SELECT * FROM 2butlerrr._matches;

TRUNCATE TABLE players;
INSERT INTO players SELECT * FROM 1butlerrr.players;
INSERT INTO players SELECT * FROM 2butlerrr._players;

TRUNCATE TABLE scores;
INSERT INTO scores SELECT * FROM 1butlerrr.scores;
INSERT INTO scores SELECT * FROM 2butlerrr._scores;

TRUNCATE TABLE segments;
INSERT INTO segments SELECT * FROM 1butlerrr.segments;
INSERT INTO segments SELECT * FROM 2butlerrr._segments;

TRUNCATE TABLE teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,shortname,grupa FROM 1butlerrr.teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,shortname,grupa+2 FROM 2butlerrr._teams;

UPDATE teams SET bye=2 WHERE fullname='BYE';

UPDATE admin SET rnd=0,segm=0;
