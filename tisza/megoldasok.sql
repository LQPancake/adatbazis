-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!

-- 10. feladat:
CREATE DATABASE tisza CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

-- 12. feladat:
DELETE FROM meres
HERE nap = "2020-03-27";

-- 13. feladat:
UPDATE vizmerce SET igId = 2
WHERE varos = "Tokaj;

-- 14. feladat:
SELECT varos, nullPont FROM `vizmerce`
ORDER BY nullPont
LIMIT 1;

-- 15. feladat:
SELECT varos, (lnv-lkv) as ingadozas FROM `vizmerce`
ORDER BY ingadozas DESC;
 
-- 16. feladat:
SELECT nev, COUNT(vizmerce.igID) as merceszam FROM `igazgatosag` 
INNER JOIN vizmerce ON igazgatosag.id = vizmerce.igID
GROUP BY igazgatosag.id;
  
-- 17. feladat:
SELECT AVG(vizAllas) AS atlag FROM `meres`
INNER JOIN vizmerce ON meres.vmId = vizmerce.id
WHERE vizmerce.varos = "Szolnok" AND nap LIKE "2020-04%";
