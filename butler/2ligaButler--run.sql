USE 2nwrr;
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
USE 2nerr;
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
USE 2swrr;
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
USE 2serr;
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


# tmp
UPDATE 2nwrr._scores SET butler=0 WHERE rnd=14 AND segment=2 AND board=1; # board 13
# tmp


UPDATE 2nerr._matches SET tabl=tabl+8, homet=homet+16,visit=visit+16;
UPDATE 2nerr._players SET id=id+300, team=team+16;
UPDATE 2nerr._scores SET tabl=tabl+8;
UPDATE 2nerr._teams SET id=id+16;
UPDATE 2nerr._segments SET tabl=tabl+8, homet=homet+16, visit=visit+16, 
openN=openN+300, openE=openE+300, openS=openS+300, openW=openW+300,
closeN=closeN+300, closeE=closeE+300, closeS=closeS+300, closeW=closeW+300;

UPDATE 2swrr._matches SET tabl=tabl+16, homet=homet+32,visit=visit+32;
UPDATE 2swrr._players SET id=id+600, team=team+32;
UPDATE 2swrr._scores SET tabl=tabl+16;
UPDATE 2swrr._teams SET id=id+32;
UPDATE 2swrr._segments SET tabl=tabl+16, homet=homet+32, visit=visit+32, 
openN=openN+600, openE=openE+600, openS=openS+600, openW=openW+600,
closeN=closeN+600, closeE=closeE+600, closeS=closeS+600, closeW=closeW+600;

UPDATE 2serr._matches SET tabl=tabl+24, homet=homet+48,visit=visit+48;
UPDATE 2serr._players SET id=id+900, team=team+48;
UPDATE 2serr._scores SET tabl=tabl+24;
UPDATE 2serr._teams SET id=id+48;
UPDATE 2serr._segments SET tabl=tabl+24, homet=homet+48, visit=visit+48, 
openN=openN+900, openE=openE+900, openS=openS+900, openW=openW+900,
closeN=closeN+900, closeE=closeE+900, closeS=closeS+900, closeW=closeW+900;

USE 2butlerrr;

TRUNCATE TABLE boards;
INSERT INTO boards SELECT * FROM 1nrr.boards;

TRUNCATE TABLE rounds;
INSERT INTO rounds SELECT * FROM 1nrr.rounds;

TRUNCATE TABLE matches;
INSERT INTO matches SELECT * FROM 2nwrr._matches;
INSERT INTO matches SELECT * FROM 2nerr._matches;
INSERT INTO matches SELECT * FROM 2swrr._matches;
INSERT INTO matches SELECT * FROM 2serr._matches;

TRUNCATE TABLE players;
INSERT INTO players SELECT * FROM 2nwrr._players;
INSERT INTO players SELECT * FROM 2nerr._players;
INSERT INTO players SELECT * FROM 2swrr._players;
INSERT INTO players SELECT * FROM 2serr._players;

TRUNCATE TABLE scores;
INSERT INTO scores SELECT * FROM 2nwrr._scores;
INSERT INTO scores SELECT * FROM 2nerr._scores;
INSERT INTO scores SELECT * FROM 2swrr._scores;
INSERT INTO scores SELECT * FROM 2serr._scores;

TRUNCATE TABLE segments;
INSERT INTO segments SELECT * FROM 2nwrr._segments;
INSERT INTO segments SELECT * FROM 2nerr._segments;
INSERT INTO segments SELECT * FROM 2swrr._segments;
INSERT INTO segments SELECT * FROM 2serr._segments;

TRUNCATE TABLE teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('NW: ',shortname),1 FROM 2nwrr._teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('NE: ',shortname),2 FROM 2nerr._teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('SW: ',shortname),3 FROM 2swrr._teams;
INSERT INTO teams (id,fullname,shortname,grupa) SELECT id,fullname,CONCAT('SE: ',shortname),4 FROM 2serr._teams;

UPDATE teams SET bye=2 WHERE fullname='BYE';

UPDATE admin SET rnd=0,segm=0;
