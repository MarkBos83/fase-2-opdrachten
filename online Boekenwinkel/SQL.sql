create table online_winkelwagen
(ID INTEGER PRIMARY KEY);

create table account
(accountnummer INTEGER PRIMARY KEY,
email VARCHAR(255),
naam VARCHAR(255) NOT NULL,
telefoonnummer INTEGER,
adres VARCHAR(255),
plaats VARCHAR(255),
online_winkelwagenID INTEGER REFERENCES online_winkelwagen(ID)
);

create table auteur
(naam VARCHAR(255) PRIMARY KEY,
geboortejaar INTEGER,
URL_auteur varchar(255)
);

create table uitgever
(naam VARCHAR(255) PRIMARY KEY,
adres VARCHAR(255),
plaats VARCHAR(255),
telefoonnummer INTEGER,
URL_uitgever, VARCHAR(255)
);

create table filiaal
(filiaalnummer INTEGER PRIMARY KEY,
adres VARCHAR(255) NOT NULL,
plaats VARCHAR(255) NOT NULL,
telefoonnummer INTEGER
);

create table boek
(ISBN BIGINT PRIMARY KEY,
uitgaveJaar INTEGER NOT NULL,
titel VARCHAR(255) NOT NULL,
prijs NUMERIC(5,2) NOT NULL,
auteur VARCHAR(255) REFERENCES Auteur(naam),
uitgever VARCHAR(255) REFERENCES Uitgever(naam)
);

create table voorraad
(ID INTEGER PRIMARY KEY,
aantal INTEGER NOT NULL,
boekISBN BIGINT REFERENCES Boek(ISBN),
Filiaalnummer INTEGER REFERENCES Filiaal(filiaalNummer)
);

create table toegevoegdboek
(ID INTEGER PRIMARY KEY,
aantal INTEGER NOT NULL,
boekISBN BIGINT REFERENCES Boek(ISBN),
online_winkelwagenID INTEGER REFERENCES online_winkelwagen(ID)
);

------------------------------------------------------------------------

insert into filiaal(filiaalnummer, adres, plaats, telefoonnummer)
values
(1, 'Rokin 9', 'Amsterdam', 0205231481),
(2, 'Oudegracht 112-b', 'Utrecht', 0302335200),
(3, 'Coolsingel 129', 'Den Haag', 0104132070),
(4, 'Kerkstraat 27', '''s-Hertogenbosch', 0733020100);

insert into auteur(naam, geboortejaar, url_auteur)
values
('Jochem Myjer', 1977, 'https://nl.wikipedia.org/wiki/Jochem_Myjer'),
('Nino Haratischwili', 1983, 'https://nl.wikipedia.org/wiki/Nino_Haratischwili'),
('Aravind Adiga', 1974, 'https://nl.wikipedia.org/wiki/Aravind_Adiga'),
('Nicci French', 1958, 'https://nl.wikipedia.org/wiki/Nicci_French'),
('Annet Schaap', 1965, 'https://nl.wikipedia.org/wiki/Annet_Schaap'),
('Jonathan Franzen', 1959, 'https://nl.wikipedia.org/wiki/Jonathan_Franzen'),
('Damon Galgut', 1963, 'https://en.wikipedia.org/wiki/Damon_Galgut'),
('Gerda Blees', 1985, 'https://nl.wikipedia.org/wiki/Gerda_Blees'),
('Saroo Brierley', 1981, 'https://en.wikipedia.org/wiki/Saroo_Brierley');

insert into uitgever(naam)
values
('Leopold'),
('Nelleke Geel'),
('De Bezige Bij'),
('Ambo|Anthos'),
('Querido'),
('Prometheus'),
('Podium'),
('Boekerij');

insert into boek(isbn, uitgavejaar, titel, prijs, auteur, uitgever)
values
(9789025884208, 2022, 'De Gorgels en de laatste kans', 21.99, 'Jochem Myjer', 'Leopold'),
(9789493169845, 2022, 'Het schaarse licht', 34.99, 'Nino Haratischwili', 'Nelleke Geel'),
(9781416562597, 2008, 'The white tiger', 12.00, 'Aravind Adiga', 'De Bezige Bij'),
(9789041420565, 2011, 'Blauwe maandag', 15.00, 'Nicci French', 'Ambo|Anthos'),
(9789045120379, 2017, 'Lampje', 18.99, 'Annet Schaap', 'Querido'),
(9789045122830, 2019, 'De boom met het oor', 17.99,'Annet Schaap', 'Querido'),
(9789044649079, 2021, 'Kruispunt', 35.00, 'Jonathan Franzen', 'Prometheus'),
(9789021424552, 2021, 'De belofte', 23.99, 'Damon Galgut', 'Querido'),
(9789057590009, 2020, 'Wij zijn licht', 22.00, 'Gerda Blees', 'Podium'),
(9789022579367, 2017, 'Lion', 15.99, 'Saroo Brierley', 'Boekerij');

insert into voorraad(id, aantal, boekisbn, filiaalnummer)
values
(1, 12, 9789025884208, 1),
(2, 21, 9789025884208, 2),
(3, 8, 9789025884208, 3),
(4, 16, 9789025884208, 4),
(5, 3, 9789493169845, 1),
(6, 28, 9789493169845, 2),
(7, 14, 9789493169845, 3),
(8, 8, 9789493169845, 4),
(9, 17, 9781416562597, 1),
(10, 11, 9781416562597, 2),
(11, 15, 9781416562597, 3),
(12, 12, 9781416562597, 4),
(13, 20, 9789041420565, 1),
(14, 18, 9789041420565, 2),
(15, 23, 9789041420565, 3),
(16, 13, 9789041420565, 4),
(17, 8, 9789045120379, 1),
(18, 24, 9789045120379, 2),
(19, 13, 9789045120379, 3),
(20, 23, 9789045120379, 4),
(21, 13, 9789045122830, 1),
(22, 21, 9789045122830, 2),
(23, 16, 9789045122830, 3),
(24, 9, 9789045122830, 4),
(25, 16, 9789044649079, 1),
(26, 14, 9789044649079, 2),
(27, 12, 9789044649079, 3),
(28, 19, 9789044649079, 4),
(29, 28, 9789021424552, 1),
(30, 22, 9789021424552, 2),
(31, 23, 9789021424552, 3),
(32, 22, 9789021424552, 4),
(33, 19, 9789057590009, 1),
(34, 11, 9789057590009, 2),
(35, 13, 9789057590009, 3),
(36, 16, 9789057590009, 4),
(37, 9, 9789022579367, 1),
(38, 18, 9789022579367, 2),
(39, 17, 9789022579367, 3),
(40, 18, 9789022579367, 4);

insert into online_winkelwagen(id)
values
(1),
(2),
(3);

insert into account(accountnummer, email, naam, telefoonnummer, adres, plaats, online_winkelwagenid)
values
(1, 'a_devries@adelaarsnest.nl', 'Arend de Vries', 0612345678, 'Adelaarsnest 12', 'Haarlem', 1),
(2, 'bboer@boeren.nl', 'Bert Boer', 0623456789, 'Mesthoop 1', 'Dorp', 2),
(3, 'c_kordaat@gmail.com', 'Cornelis Kordaat', 0634567890, 'Kerkstraat 11', 'Utrecht', 3);

insert into toegevoegdboek(id, aantal, boekisbn, online_winkelwagenid)
values
(1, 1, 9789025884208, 1),
(2, 1, 9789493169845, 1),
(3, 4, 9781416562597, 2),
(4, 3, 9789025884208, 3),
(5, 1, 9781416562597, 1);

-----------------------------------------------------------------------

select boek.isbn, boek.titel, sum(t.aantal)
from boek
left join toegevoegdboek t on t.boekisbn = boek.isbn
group by boek.isbn

select a.email, a.naam, b.titel, t.aantal
from account a
inner join online_winkelwagen o on o.id = a.online_winkelwagenid
inner join toegevoegdboek t on t.online_winkelwagenid = o.id
inner join boek b on b.isbn = t.boekisbn
where a.naam = 'Arend de Vries';

select f.adres, b.titel, v.aantal
from filiaal f
inner join voorraad v on v.filiaalnummer = f.filiaalnummer
inner join boek b on b.isbn = v.boekisbn
order by adres asc

select a.naam, b.uitgever
from auteur a
inner join boek b on b.auteur = a.naam
group by a.naam, b.uitgever

select titel 
from boek 
where titel like 'A%' or titel like 'B%' or titel like 'a%' or titel like 'b%'

select u.naam, avg(b.prijs)::numeric(5,2) gemiddelde_prijs_per_boek
from uitgever u
inner join boek b on b.uitgever = u.naam
group by u.naam

select o.id, sum(t.aantal) boek_duurder_als_10
from online_winkelwagen o
inner join toegevoegdboek t on o.id = t.online_winkelwagenid
inner join boek b on t.boekisbn = b.isbn
where b.prijs > 10
group by o.id
order by o.id asc