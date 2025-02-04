-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE formula1 CHARACTER SET utf8 COLLATE utf8_hungarian_ci;

-- 3. feladat:
UPDATE nagydijak
SET korokszama = 71-1
WHERE id = 12;

-- 4. feladat:
SELECT vezeteknev, rajtszam, csapatnev, 2019-YEAR(szuletesidatum) AS eletkor FROM pilotak;

-- 5. feladat:
SELECT nagydijak.nev, pilotak.vezeteknev, pilotak.keresztnev, nagydijak.versenynap FROM pilotak
INNER JOIN eredmenyek ON pilotak.id = eredmenyek.pilotaid
INNER JOIN nagydijak ON eredmenyek.nagydijid = nagydijak.id
WHERE eredmenyek.helyezes = 1
ORDER BY nagydijak.versenynap;

-- 6. feladat:
SELECT CONCAT(keresztnev, ' ', vezeteknev) AS nev, csapatnev, SUM(eredmenyek.pontszam) AS osszpontszam FROM pilotak
INNER JOIN eredmenyek on eredmenyek.pilotaid = pilotak.id
GROUP BY nev
ORDER BY osszpontszam DESC
LIMIT 3;