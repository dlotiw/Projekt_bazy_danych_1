CREATE OR REPLACE PROCEDURE GenerujRachunkiBiezacyMiesiac AS
    v_biezacy_miesiac NUMBER;
BEGIN
    v_biezacy_miesiac := EXTRACT(MONTH FROM SYSDATE);

    -- Generuj rachunki
    FOR rec IN (SELECT * FROM Lokale@do_db11a)
    LOOP
        -- Oblicz kwotê dla rachunku Zarz¹dcy
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Zarz¹dca'), v_biezacy_miesiac, 'Rachunek Zarz¹dca', (SELECT kwota FROM Platnosci WHERE dostawca = 'Zarz¹dca'));

        -- Oblicz kwotê dla rachunku firmy sprz¹taj¹cej
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Firma sprz¹taj¹ca'), v_biezacy_miesiac, 'Rachunek sprz¹tanie', (SELECT kwota FROM Platnosci WHERE dostawca = 'Firma sprz¹taj¹ca'));

        -- Oblicz kwotê dla rachunku Wywozu œmieci
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Wywóz œmieci'), v_biezacy_miesiac, 'Rachunek wywóz œmieci', (SELECT kwota FROM Platnosci WHERE dostawca = 'Wywóz œmieci'));

        -- Oblicz kwotê dla rachunku Rachunku za utrzymanie drogi dojazdowej
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'UDIP'), v_biezacy_miesiac, 'Rachunek za utrzymanie drogi dojazdowej', (SELECT kwota FROM Platnosci WHERE dostawca = 'Rachunek za utrzymanie drogi dojazdowej'));

        -- Oblicz kwotê dla rachunku Enea (Budynek 1)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Enea'), v_biezacy_miesiac, 'Rachunek Enea (Budynek 1)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Enea' AND budynek = 1));

        -- Oblicz kwotê dla rachunku Enea (Budynek 2)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Enea'), v_biezacy_miesiac, 'Rachunek Enea (Budynek 2)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Enea' AND budynek = 2));

        -- Oblicz kwotê dla rachunku Ogrzewania (Budynek 1)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Ogrzewanie'), v_biezacy_miesiac, 'Rachunek Ogrzewanie (Budynek 1)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Ogrzewanie' AND budynek = 1));

        -- Oblicz kwotê dla rachunku Ogrzewania (Budynek 2)
        INSERT INTO Rachunki (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota)
        VALUES (RachunkiSeq.NEXTVAL, (SELECT id_dostawcy FROM Dostawcy WHERE nazwa_firmy = 'Ogrzewanie'), v_biezacy_miesiac, 'Rachunek Ogrzewanie (Budynek 2)', (SELECT kwota FROM Platnosci WHERE dostawca = 'Ogrzewanie' AND budynek = 2));
    END LOOP;

    -- Archiwizuj rachunki za poprzednie miesi¹ce
    INSERT INTO Rachunki_Historia (id_rachunku, id_dostawcy, nr_miesiac, opis, kwota, data_archiwizacji)
    SELECT id_rachunku, id_dostawcy, nr_miesiac, opis, kwota, SYSDATE
    FROM Rachunki
    WHERE nr_miesiac < v_biezacy_miesiac;

    -- ZatwierdŸ transakcjê
    COMMIT;
END;
/
