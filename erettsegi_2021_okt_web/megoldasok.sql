-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 9. feladat:
CREATE DATABASE tdhongrie CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

-- 11. feladat:
DELETE FROM csapat WHERE id=21;

-- 12. feladat:
SELECT nev FROM versenyzo where nemzetiseg="HUN" ORDER BY nev;

-- 13. feladat:
SELECT nemzetiseg, COUNT(nemzetiseg) AS indulokszama from versenyzo GROUP BY nemzetiseg ORDER BY indulokszama DESC;

-- 14. feladat:

 
-- 15. feladat:

