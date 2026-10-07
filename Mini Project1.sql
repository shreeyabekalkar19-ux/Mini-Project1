SHOW databases;

DROP DATABASE IF EXISTS Project;

CREATE DATABASE Project;

USE Project;

CREATE TABLE music(
SerialNo INT NOT NULL,
FirstName VARCHAR(15) NOT NULL,
LastName VARCHAR(15),
SongName VARCHAR(20) NOT NULL
);

INSERT INTO music(SerialNo,FirstName,LastName,SongName)
VALUES
(1,"Sid","Sriram","Samajavaragamana"),
(2,"Jubin","Nautiyal","Hamnava"),
(3,"Dhvani","Bhanushali","Vaaste"),
(4,"Shreya","Ghoshal","Kalyani"),
(5,"Neha","Kakkar","Dilbar");

SELECT * FROM music;

DROP TABLE music;

DROP DATABASE Project;

TRUNCATE TABLE music;

SELECT * FROM music;

INSERT INTO music(SerialNo,FirstName,LastName,SongName)
VALUES
(1,"Sid","Sriram","Samajavaragamana"),
(2,"Jubin","Nautiyal","Hamnava"),
(3,"Dhvani","Bhanushali","Vaaste"),
(4,"Shreya","Ghoshal","Kalyani"),
(5,"Neha","Kakkar","Dilbar");

ALTER TABLE music
ADD Experience INT;

SELECT * FROM music;

ALTER TABLE music
DROP LastName;

ALTER TABLE music
RENAME COlUMN SerialNo TO ArtistId;

ALTER TABLE music
RENAME TO artists;

SELECT * FROM artists;

ALTER TABLE artists
ADD contact int;

ALTER TABLE artists
MODIFY COLUMN contact VARCHAR(15);

SELECT * FROM artists;

SET sql_safe_updates = 0;

UPDATE artists
SET Experience = "5";

UPDATE artists
SET Experience = "8"
WHERE ArtistId = 2;

UPDATE artists
SET Experience = "8", SongName = "Le Ja"
WHERE ArtistId = 3;

DELETE FROM artists
WHERE ArtistId = 5;

SELECT * FROM artists;

SELECT ArtistId, FirstName, SongName, Experience,
    CASE 
        WHEN Experience >= 10 THEN 'Veteran'
        WHEN Experience >= 7 THEN 'Established'
        ELSE 'Emerging'
    END AS ArtistCategory
FROM artists;

USE Project;

SHOW tables;


