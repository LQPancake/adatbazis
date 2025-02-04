A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!
***
14. feladat
CREATE DATABASE tesztauzem CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
***
16. feladat
SELECT COUNT(kiszereles) AS felkilos_tesztak_szama FROM `tesztak`
WHERE kiszereles = 500;		
***
17. feladat
SELECT rendelesek.id, datum FROM `rendelesek`
INNER JOIN vevok ON vevok.id = rendelesek.vevoId
WHERE vevok.nev = "Juhász Zsombor";
***
18. feladat
INSERT INTO tesztak(id, nev, kiszereles, ar, kategoriaId)
VALUES('77', 'Piroska mama csigatésztája','500','530','9');
***
19. feladat
SELECT rendeleselemek.tesztaId, tesztak.nev, tesztak.kiszereles, kategoriak.nev AS kategoria,SUM(rendeleselemek.mennyiseg) AS szumma_rendeles FROM tesztak
INNER JOIN rendeleselemek ON tesztak.id = rendeleselemek.tesztaId
INNER JOIN kategoriak ON tesztak.kategoriaId = kategoriak.id
GROUP BY rendeleselemek.tesztaId
ORDER BY szumma_rendeles DESC
LIMIT 5;
***
20. feladat
SELECT vevok.nev AS vevo_neve, rendeleselemek.mennyiseg * rendeleselemek.egysegAr AS szumma_ar FROM rendelesek
INNER JOIN rendeleselemek ON rendeleselemek.rendelesId = rendelesek.id
INNER JOIN vevok ON rendelesek.vevoId = vevok.id
GROUP BY vevo_neve
ORDER BY szumma_ar DESC
LIMIT 1;


