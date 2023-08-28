INSERT INTO Budynki (id_budynku, nazwa_budynku)
VALUES (1, 'Budynek A');

INSERT INTO Budynki (id_budynku, nazwa_budynku)
VALUES (2, 'Budynek B');

-- Budynki A
INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (1, 1, 'A1', 'Mieszkanie', 70);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (2, 1, 'A2', 'Mieszkanie', 60);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (3, 1, 'A3', 'Mieszkanie', 80);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (4, 1, 'A4', 'Mieszkanie', 75);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (5, 1, 'A5', 'Mieszkanie', 65);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (6, 1, 'A6', 'Mieszkanie', 70);

-- Budynki B
INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (7, 2, 'B1', 'Mieszkanie', 55);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (8, 2, 'B2', 'Mieszkanie', 45);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (9, 2, 'B3', 'Mieszkanie', 50);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (10, 2, 'B4', 'Mieszkanie', 65);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (11, 2, 'B5', 'Mieszkanie', 60);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (12, 2, 'B6', 'Mieszkanie', 55);

-- Gara¿e
INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (13, 1, 'G1', 'Gara¿', 20);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (14, 1, 'G2', 'Gara¿', 20);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (15, 2, 'G3', 'Gara¿', 18);

INSERT INTO Lokale (id_lokalu, id_budynku, nr_lokalu, typ_lokalu, metraz)
VALUES (16, 2, 'G4', 'Gara¿', 18);

-- W³aœciciel 1
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', '123456789');

-- W³aœciciel 2
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (2, 'Anna', 'Nowak', 'anna.nowak@example.com', '987654321');

-- W³aœciciel 3
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (3, 'Piotr', 'Nowakowski', 'piotr.nowakowski@example.com', '555555555');

-- W³aœciciel 4
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (4, 'Katarzyna', 'Wiœniewska', 'katarzyna.wisniewska@example.com', '111111111');

-- W³aœciciel 5
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (5, 'Tomasz', 'Wójcik', 'tomasz.wojcik@example.com', '222222222');

-- W³aœciciel 6
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (6, 'Magdalena', 'Kamiñska', 'magdalena.kaminska@example.com', '333333333');

-- W³aœciciel 7
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (7, 'Micha³', 'Lewandowski', 'michal.lewandowski@example.com', '444444444');

-- W³aœciciel 8
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (8, 'Alicja', 'Jankowska', 'alicja.jankowska@example.com', '666666666');

-- W³aœciciel 9
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (9, 'Marcin', 'Kaczmarek', 'marcin.kaczmarek@example.com', '777777777');

-- W³aœciciel 10
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (10, 'Monika', 'Zieliñska', 'monika.zielinska@example.com', '888888888');

-- W³aœciciel 11
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (11, 'Kamil', 'Wróbel', 'kamil.wrobel@example.com', '999999999');

-- W³aœciciel 12
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (12, 'Ewa', 'Kowalczyk', 'ewa.kowalczyk@example.com', '121212121');

-- W³aœciciel 13
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (13, 'Adam', 'D¹browski', 'adam.dabrowski@example.com', '232323232');

-- W³aœciciel 14
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (14, 'Karolina', 'Szymañska', 'karolina.szymanska@example.com', '343434343');

-- W³aœciciel 15
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (15, 'Grzegorz', 'Witkowski', 'grzegorz.witkowski@example.com', '454545454');

-- W³aœciciel 16
INSERT INTO Wlasciciele (id_wlasciciela, imie, nazwisko, mail, nr_telefonu)
VALUES (16, 'Agnieszka', 'Piotrowska', 'agnieszka.piotrowska@example.com', '565656565');

-- Przypisanie w³aœcicieli do lokali w budynku A
INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (1, 1, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (2, 2, 'N');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (3, 3, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (4, 4, 'N');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (5, 5, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (6, 6, 'N');

-- Przypisanie w³aœcicieli do lokali w budynku B
INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (7, 7, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (8, 8, 'N');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (9, 9, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (10, 10, 'N');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (11, 11, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (12, 12, 'N');

-- Przypisanie w³aœcicieli do gara¿y
INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (13, 13, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (14, 14, 'N');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (15, 15, 'T');

INSERT INTO Wlasciciele_Lokale (id_wlasciciela, id_lokalu, czy_glowny)
VALUES (16, 16, 'N');
