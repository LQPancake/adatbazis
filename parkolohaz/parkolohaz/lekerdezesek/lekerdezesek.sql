-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!
-- 13. feladat
CREATE DATABASE parkolohaz CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
-- ***
-- 15. feladat
SELECT COUNT(szelesseg)AS masfeles_parkolohelyek_szama FROM parkolohely
WHERE szelesseg = 1.5;
-- ***
-- 16. feladat
INSERT INTO jarmutipus
(nev)
VALUES
("Elektromos gépjármű");

UPDATE parkolohely
SET parkolohely.jarmutipusId = 
(SELECT jarmutipus.id FROM jarmutipus
WHERE jarmutipus.nev = "Elektromos gépjármű")
WHERE parkolohely.felirat = "P001"
-- ***
-- 17. feladat
SELECT foglalas.datum, foglalas.ar FROM felhasznalo
INNER JOIN foglalas ON felhasznalo.id = foglalas.felhasznaloId
WHERE felhasznalo.nev = "Kovács Anna"
-- ***
-- 18. feladat
SELECT felhasznalo.nev, SUM(foglalas.ar) AS szumma_tartozas FROM foglalas
INNER JOIN parkolohely ON foglalas.parkolohelyId = parkolohely.id
INNER JOIN jarmutipus ON parkolohely.jarmutipusId = jarmutipus.id
INNER JOIN felhasznaloId ON felhasznalo.id = foglalas.felhasznaloId
WHERE NOT foglalas.fizetve AND jarmutipus.nev = "Motorkerékpár"
GROUP BY felhasznalo.id
ORDER BY szumma_tartozas
LIMIT 1

-- ***