-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

BALIGA JÓZSEF
-- 8. feladat:
CREATE DATABASE kobanyavasut CHARACTER SET utf8 COLLATE utf8_hungarian_ci


-- 10. feladat:
INSERT INTO allomasok(id, allomasNev)
VALUES(16, "Dabas")


-- 11. feladat:
UPDATE vonatok
SET jaratTipus = "sz"
WHERE jaratSzam = 541


-- 12. feladat:
SELECT COUNT(allomas) AS jaratok_szama FROM vonatok
WHERE jaratTipus = "Zó" AND allomas = "Felső"


-- 13. feladat:
SELECT MIN(indulas) AS elso, MAX(indulas) AS utolso FROM vonatok
INNER JOIN allomasok ON vonatok.vegAll = allomasok.id
WHERE vonatok.vegAll = 10


-- 14. feladat:
SELECT indulas, allomas, erkezIdo FROM vonatok
INNER JOIN allomasok ON vonatok.vegAll = allomasok.id
WHERE vonatok.vegAll = 14
ORDER BY indulas
LIMIT 5


