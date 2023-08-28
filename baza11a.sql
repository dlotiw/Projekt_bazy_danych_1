-- Tworzenie tabeli "Budynki"
CREATE TABLE Budynki (
id_budynku NUMBER PRIMARY KEY,
nazwa_budynku VARCHAR2(100)
);

-- Tworzenie tabeli "Lokale"
CREATE TABLE Lokale (
id_lokalu NUMBER PRIMARY KEY,
id_budynku NUMBER NOT NULL,
nr_lokalu VARCHAR2(10) NOT NULL,
typ_lokalu VARCHAR2(10) NOT NULL,
metraz NUMBER NOT NULL,
FOREIGN KEY (id_budynku) REFERENCES Budynki(id_budynku)
);

-- Tworzenie tabeli "Wlasciciele"
CREATE TABLE Wlasciciele (
id_wlasciciela NUMBER PRIMARY KEY,
imie VARCHAR2(50) NOT NULL,
nazwisko VARCHAR2(50) NOT NULL,
mail VARCHAR2(100) NOT NULL,
nr_telefonu VARCHAR2(20)
);

-- Tworzenie tabeli "Wlasciciele_Lokale" aby zapewnic relacje wiele do wielu
CREATE TABLE Wlasciciele_Lokale (
id_wlasciciela NUMBER NOT NULL,
id_lokalu NUMBER NOT NULL,
czy_glowny VARCHAR2(1) NOT NULL,
FOREIGN KEY (id_wlasciciela) REFERENCES Wlasciciele(id_wlasciciela),
FOREIGN KEY (id_lokalu) REFERENCES Lokale(id_lokalu)
);

-- Tworzenie tabeli "Zgloszenia"
CREATE TABLE Zgloszenia (
id_zgloszenia NUMBER PRIMARY KEY,
id_lokalu NUMBER NOT NULL,
ilosc_osob NUMBER NOT NULL,
FOREIGN KEY (id_lokalu) REFERENCES Lokale(id_lokalu)
);


--link bazodanowy
create database link do_db11b connect to RBDNStudent8 identified by start123 using 'baza11b';

--migawka pozwalaj¹ca na pobieranie aktualnych danych o nowych rachunkach od dostawców
CREATE MATERIALIZED VIEW Nowe_Rachunki
Build immediate
REFRESH FAST
AS SELECT * FROM Rachunki@do_db11b;

--migawka pozwalaj¹ca na ustalenie aktualnie podpisanych umow na dany miesiac

CREATE MATERIALIZED VIEW Migawka_Dostawcy_Umowy
Build immediate
REFRESH complete 
NEXT add_months(sysdate, 1)
AS
SELECT
    d.id_dostawcy,
    d.nazwa_firmy,
    u.id_umowy,
    u.nr_miesiaca
FROM
    Dostawcy@do_db11b d
    JOIN Umowy_dostawcy@do_db11b u ON d.id_dostawcy = u.id_dostawcy;



