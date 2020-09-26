# Skrypty ligowe - Butler itp.

Butler:

- `butler/?ligaButler_empty_db.sql` - stan początkowy lokalnych baz MySQL trzymających butlery centralne (?: 1 - I liga, 2 - II liga, 0 - łączne)
- `butler/prepare.py` - konfiguracja gdzie są zrzuty poszczególnych grup + pobranie zrzutów i wczytanie do lokalnego serwera MySQL
- `butler/run_butler_scripts.py` - przeniesienie danych z lokalnych kopii baz poszczególnych grup do baz butlerów centralnych; po tym kroku przelicza się turnieje centralne normalnie w Adminie

Inne:

- `boards.py` - wyświetl rękę N ze wskazanego rozdania każdej grupy w celu optycznej weryfikacji, czy wszyscy mają podpięte rozkłady i czy te same

