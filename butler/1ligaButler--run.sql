USE 1nrr;
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
USE 1srr;
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

UPDATE 1srr._matches SET tabl=tabl+8, homet=homet+16,visit=visit+16;
UPDATE 1srr._players SET id=id+300, team=team+16;
UPDATE 1srr._scores SET tabl=tabl+8;
UPDATE 1srr._teams SET id=id+16;
UPDATE 1srr._segments SET tabl=tabl+8, homet=homet+16, visit=visit+16, 
openN=openN+300, openE=openE+300, openS=openS+300, openW=openW+300,
closeN=closeN+300, closeE=closeE+300, closeS=closeS+300, closeW=closeW+300;

USE 1butlerrr;

TRUNCATE TABLE boards;
INSERT INTO boards SELECT * FROM 1nrr.boards;

TRUNCATE TABLE rounds;
INSERT INTO rounds SELECT * FROM 1nrr.rounds;

TRUNCATE TABLE matches;
INSERT INTO matches SELECT * FROM 1nrr._matches;
INSERT INTO matches SELECT * FROM 1srr._matches;

TRUNCATE TABLE players;
INSERT INTO players SELECT * FROM 1nrr._players;
INSERT INTO players SELECT * FROM 1srr._players;

TRUNCATE TABLE scores;
INSERT INTO scores SELECT * FROM 1nrr._scores;
INSERT INTO scores SELECT * FROM 1srr._scores;

TRUNCATE TABLE segments;
INSERT INTO segments SELECT * FROM 1nrr._segments;
INSERT INTO segments SELECT * FROM 1srr._segments;

TRUNCATE TABLE teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('N: ',shortname),1 FROM 1nrr._teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('S: ',shortname),2 FROM 1srr._teams;

UPDATE teams SET bye=2 WHERE fullname='BYE';

UPDATE admin SET rnd=0,segm=0;
