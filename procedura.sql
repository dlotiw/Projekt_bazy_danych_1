CREATE OR REPLACE PROCEDURE GenerujRachunkiBiezacyMiesiac AS
    v_biezacy_miesiac NUMBER;
BEGIN
    v_biezacy_miesiac := EXTRACT(MONTH FROM SYSDATE);

    -- Generuj rachunki
    FOR rec IN (SELECT * FROM Lokale@do_db11a)
    LOOP
        -- Oblicz kwot� dla rachunku Zarz�dcy
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Zarz�dca'), v_biezacy_miesiac, 'Rachunek Zarz�dca', (SELECT kwota FROM Platnosci WHERE dostawca = 'Zarz�dca'));

        -- Oblicz kwot� dla rachunku firmy sprz�taj�cej
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Firma sprz�taj�ca'), v_biezacy_miesiac, 'Rachunek sprz�tanie', (SELECT kwota FROM Platnosci WHERE dostawca = 'Firma sprz�taj�ca'));

        -- Oblicz kwot� dla rachunku Wywozu �mieci
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Wyw�z �mieci'), v_biezacy_miesiac, 'Rachunek wyw�z �mieci', (SELECT kwota FROM Platnosci WHERE dostawca = 'Wyw�z �mieci'));

        -- Oblicz kwot� dla rachunku Rachunku za utrzymanie drogi dojazdowej
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'UDIP'), v_biezacy_miesiac, 'Rachunek za utrzymanie drogi dojazdowej', (SELECT kwota FROM Platnosci WHERE dostawca = 'Rachunek za utrzymanie drogi dojazdowej'));

        -- Oblicz kwot� dla rachunku Enea (Budynek 1)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Enea'), v_biezacy_miesiac, 'Rachunek Enea (Budynek 1)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Enea' AND budynek = 1));

        -- Oblicz kwot� dla rachunku Enea (Budynek 2)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Enea'), v_biezacy_miesiac, 'Rachunek Enea (Budynek 2)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Enea' AND budynek = 2));

        -- Oblicz kwot� dla rachunku Ogrzewania (Budynek 1)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Ogrzewanie'), v_biezacy_miesiac, 'Rachunek Ogrzewanie (Budynek 1)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Ogrzewanie' AND budynek = 1));

        -- Oblicz kwot� dla rachunku Ogrzewania (Budynek 2)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Ogrzewanie'), v_biezacy_miesiac, 'Rachunek Ogrzewanie (Budynek 2)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Ogrzewanie' AND budynek = 2));
    END LOOP;

    -- Archiwizuj rachunki za poprzednie miesi�ce
    INSERT INTO Rachunki_Historia (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota, data_archiwizacji)
    SELECT id_rachunku, id_dostawcy, nr_miesiac, opis, kwota, SYSDATE
    FROM Rachunki
    WHERE nr_miesiac < v_biezacy_miesiac;

    -- Zatwierd� transakcj�
    COMMIT;
END;
/
