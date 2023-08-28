INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (1, 'Zarz¹dca', 'ul. Zarz¹dowa 1, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (2, 'Firma sprz¹taj¹ca', 'ul. Sprz¹taj¹ca 2, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (3, 'Wywóz œmieci', 'ul. Œmieciarska 3, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (4, 'UDIP', 'ul. Utrzymaniowa 4, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (5, 'Enea', 'ul. Energia 5, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (6, 'Ogrzewanie', 'ul. Ogrzewalna 6, Bydgoszcz');

INSERT INTO Umowy_dostawcy (id_umowy, id_dostawcy, nr_miesiaca)
VALUES (1, 1, 1);

INSERT INTO Umowy_dostawcy (id_umowy, id_dostawcy, nr_miesiaca)
VALUES (2, 1, 2);

INSERT INTO Umowy_dostawcy (id_umowy, id_dostawcy, nr_miesiaca)
VALUES (5, 3, 1);

INSERT INTO Umowy_dostawcy (id_umowy, id_dostawcy, nr_miesiaca)
VALUES (6, 3, 2);

--Przyk³adow p³atnoœci
INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (1, 1, 1, 2023, 500, 'Op³ata dla zarz¹dcy');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (2, 2, 2, 2023, 200, 'Op³ata dla firmy sprz¹taj¹cej');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (3, 3, 3, 2023, 100, 'Op³ata za wywóz œmieci');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (4, 4, 4, 2023, 300, 'Op³ata za utrzymanie drogi dojazdowej');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (5, 5, 5, 2023, 150, 'Op³ata za energiê - budynek 1');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (6, 5, 6, 2023, 200, 'Op³ata za energiê - budynek 2');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (7, 6, 7, 2023, 10, 'Op³ata za ogrzewanie - budynek 1');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (8, 6, 8, 2023, 15, 'Op³ata za ogrzewanie - budynek 2');

