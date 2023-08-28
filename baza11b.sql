-- Tworzenie tabeli "Dostawcy"
CREATE TABLE Dostawcy (
    id_dostawcy NUMBER PRIMARY KEY,
    nazwa_firmy VARCHAR2(100),
    dane_teleadresowe VARCHAR2(200)
);
--Tabela p³atnoœci jakie spódzielnia musi dokonaæ
CREATE TABLE Platnosci (
  id_platnosci NUMBER,
  id_dostawcy NUMBER,
  miesiac NUMBER,
  rok NUMBER,
  kwota NUMBER,
  opis VARCHAR2(200),
  CONSTRAINT pk_platnosci PRIMARY KEY (id_platnosci),
  CONSTRAINT fk_dostawcy FOREIGN KEY (id_dostawcy) REFERENCES Dostawcy(id_dostawcy)
);
-- Tworzenie tabeli "Rachunki_Dostawcy" tabel rachunków danych przez dostawców jeden dostawca wiele rachunków
CREATE TABLE Rachunki(
    id_rachunku_dostawcy NUMBER PRIMARY KEY,
    id_dostawcy NUMBER,
    nr_miesi¹ca NUMBER,
	opis VARCHAR2(100),
    kwota NUMBER,
    FOREIGN KEY (id_dostawcy) REFERENCES Dostawcy(id_dostawcy)
);

-- Tworzenie tabeli "Umowy_dostawcy" tabela umów jakie s¹ podpisane w jakim miesiacu z jakim dostawc¹
CREATE TABLE Umowy_dostawcy (
    id_umowy NUMBER PRIMARY KEY,
    id_dostawcy Number,
    nr_miesiaca Number,
    FOREIGN KEY (id_dostawcy) REFERENCES Dostawcy(id_dostawcy)
);

-- Tworzenie tabeli "Rachunki_Historia" historyczne rachunki
CREATE TABLE Rachunki_Dostawcy (
    id_rachunku_dostawcy NUMBER PRIMARY KEY,
    id_dostawcy NUMBER,
    nr_miesi¹ca NUMBER,
	opis VARCHAR2(100),
    kwota NUMBER,
    data_archiwizacji DATE,
    FOREIGN KEY (id_dostawcy) REFERENCES Dostawcy(id_dostawcy)
);

--link bazodanowy
create database link do_db11a connect to RBDNStudent8 identified by start123 using 'baza11a';

--sekwencja dla rachunków
CREATE SEQUENCE RachunkiSeq START WITH 1 INCREMENT BY 1;


--log pozwalaj¹cy na odsiezanie fast migawki w baza11a
CREATE MATERIALIZED VIEW LOG ON Rachunki_Dostawcy;

--migawka zapisuj¹ca historyczne dane co miesiac
CREATE MATERIALIZED VIEW budynki_historia
Build immediate
REFRESH complete
NEXT add_months(sysdate, 1)
AS
SELECT b.id_budynku,
       b.nazwa_budynku,
       l.id_lokalu,
       l.nr_lokalu,
       l.typ_lokalu,
       l.metraz,
       wl.id_wlasciciela,
       w.imie,
       w.nazwisko,
       w.mail,
       w.nr_telefonu,
       z.ilosc_osob
FROM budynki@do_db11a b
JOIN lokale@do_db11a l ON b.id_budynku = l.id_budynku
JOIN wlasciciele_lokale@do_db11a wl ON l.id_lokalu = wl.id_lokalu
join wlasciciele@do_db11a w on w.id_wlasciciela=wl.id_wlasciciela 
JOIN zgloszenia@do_db11a z ON l.id_lokalu = z.id_lokalu;
