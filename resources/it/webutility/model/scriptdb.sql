DROP TABLE IF EXISTS "allegati_verbale";
CREATE TABLE "allegati_verbale" ("id" INTEGER NOT NULL , "file" BLOB, "nome_file" VARCHAR, "id_verbale" INTEGER, "tipo_verbale" INTEGER, "dominio" INTEGER);
DROP TABLE IF EXISTS "comuni";
CREATE TABLE "comuni" ("id" INTEGER, "nome" VARCHAR, "provincia" VARCHAR, "cap" VARCHAR, "prefissoTel" VARCHAR, "codiceIstat" VARCHAR, "codiceCatastale" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR);

DROP TABLE IF EXISTS "ente_rilascio";
CREATE TABLE "ente_rilascio" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "indirizzi";
CREATE TABLE "indirizzo" ("id" INTEGER NOT NULL , "indirizzo" VARCHAR, "numero" VARCHAR, "cap" VARCHAR, "citta" VARCHAR, "provincia" VARCHAR, "interno" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "infrazioni";
CREATE TABLE "infrazioni" ("id" INTEGER NOT NULL , "articolo" VARCHAR, "comma" VARCHAR, "descrizione" VARCHAR, "importo" NUMERIC, "punti" INTEGER, "sanzione_accessoria_1" INTEGER, "sanzione_accessoria_2" INTEGER, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "marche";
CREATE TABLE "marche" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "modelli";
CREATE TABLE "modelli" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "motivo_mc";
CREATE TABLE "motivo_mc" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "nazioni";
CREATE TABLE "nazioni" ("id" INTEGER NOT NULL , "nome" VARCHAR, "codiceCF" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR);


DROP TABLE IF EXISTS "note_chiusura";
CREATE TABLE "note_chiusura" ("id" INTEGER NOT NULL , "descrizione" DATETIME, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "sanzioni_accessorie";
CREATE TABLE "sanzioni_accessorie" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "stato_verbale";
CREATE TABLE "stato_verbale" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" VARCHAR, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "tipo_allegato";
CREATE TABLE "tipo_allegato" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);



DROP TABLE IF EXISTS "tipo_documento";
CREATE TABLE "tipo_documento" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "tipo_proprieta";
CREATE TABLE "tipo_proprieta" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "tipo_targa";
CREATE TABLE "tipo_targa" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);


DROP TABLE IF EXISTS "tipo_veicolo";
CREATE TABLE "tipo_veicolo" ("id" INTEGER NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "utenti_appl";
CREATE TABLE "utenti_appl" ("id" INTEGER NOT NULL , "username" VARCHAR, "password" VARCHAR, "nome" VARCHAR, "cognome" VARCHAR, "indirizzo" INTEGER, "email" VARCHAR, "telefono" VARCHAR, "cellulare" VARCHAR, "attivo" VARCHAR, "tema" VARCHAR, "su" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER, "mobileSu" VARCHAR, "matricola" VARCHAR);



DROP TABLE IF EXISTS "verbali";
CREATE TABLE verbali (dominio NUMERIC, comune NUMERIC, importo NUMERIC, dataora_verbale Date, utente_accertatore NUMERIC, data_scadenza Date, numero_documento Varchar, data_rilascio Date, comune_rilascio NUMERIC, ente_rilascio NUMERIC, tipo_documento NUMERIC, partita_iva Varchar, proprieta NUMERIC, sesso Varchar, indirizzo_residenza NUMERIC, comune_nascita NUMERIC, id INTEGER, stato_verbale INTEGER, targa VARCHAR, tipo_targa INTEGER, indirizzo VARCHAR, codiceVia VARCHAR, numero_civico VARCHAR, commento VARCHAR, tipo_veicolo INTEGER, marca_veicolo INTEGER, modello_veicolo INTEGER, colore_veicolo VARCHAR, nazione_veicolo INTEGER, motivo_mc INTEGER, nota VARCHAR, nota_precomp INTEGER, dichiarazione_trasgr VARCHAR, nome_trasgr VARCHAR, cognome_trasgr VARCHAR, data_nascita DATETIME);


DROP TABLE IF EXISTS "vie";
CREATE TABLE "vie" ("codiceVia" VARCHAR NOT NULL , "descrizione" VARCHAR, "dtm_modifica" DATETIME, "flg_cancellato" VARCHAR, "dominio" INTEGER);

DROP TABLE IF EXISTS "violazioni";
CREATE TABLE "violazioni" ("id" INTEGER NOT NULL , "infrazione" INTEGER, "id_verbale" INTEGER, "dominio" INTEGER);
