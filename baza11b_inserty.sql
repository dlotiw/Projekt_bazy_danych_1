INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (1, 'Zarz�dca', 'ul. Zarz�dowa 1, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (2, 'Firma sprz�taj�ca', 'ul. Sprz�taj�ca 2, Bydgoszcz');

INSERT INTO Dostawcy (id_dostawcy, nazwa_firmy, dane_teleadresowe)
VALUES (3, 'Wyw�z �mieci', 'ul. �mieciarska 3, Bydgoszcz');

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

--Przyk�adow p�atno�ci
INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (1, 1, 1, 2023, 500, 'Op�ata dla zarz�dcy');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (2, 2, 2, 2023, 200, 'Op�ata dla firmy sprz�taj�cej');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (3, 3, 3, 2023, 100, 'Op�ata za wyw�z �mieci');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (4, 4, 4, 2023, 300, 'Op�ata za utrzymanie drogi dojazdowej');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (5, 5, 5, 2023, 150, 'Op�ata za energi� - budynek 1');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (6, 5, 6, 2023, 200, 'Op�ata za energi� - budynek 2');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (7, 6, 7, 2023, 10, 'Op�ata za ogrzewanie - budynek 1');

INSERT INTO Platnosci (id_platnosci, id_dostawcy, miesiac, rok, kwota, opis)
VALUES (8, 6, 8, 2023, 15, 'Op�ata za ogrzewanie - budynek 2');

