-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 8. feladat:
CREATE DATABASE kobanyavasut CHARACTER SET utf8 COLLATE utf8_hungarian_ci;


-- 10. feladat:
INSERT INTO allomasok(id, allomasNev)
VALUES (16, 'Dabas')


-- 11. feladat:
UPDATE vonatok SET jaratTipus = 'sz'
WHERE jaratSzam = 541


-- 12. feladat:
SELECT COUNT(allomas) as 'Járatok száma' FROM vonatok
WHERE allomas = 'Felső' AND jaratTipus = 'zó'


-- 13. feladat:
SELECT MIN(indulas) AS 'elso', MAX(indulas) AS 'utolso' FROM `vonatok`
WHERE vegAll = 10


-- 14. feladat:
SELECT indulas, allomas, erkezIdo FROM `vonatok`
WHERE vegAll = 14
ORDER BY indulas ASC
LIMIT 5

