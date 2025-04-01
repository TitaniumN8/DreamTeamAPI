
CREATE TABLE Stadiums
(
StadiumID varchar(255) primary key not null,
StadiumName varchar(255)
)

CREATE TABLE Teams 
(
TeamID varchar(255) primary key not null,
TeamName varchar(255),
Stadium varchar(255) FOREIGN KEY REFERENCES Stadiums (StadiumID)
)



CREATE TABLE Players
(
PlayerID varchar(255) Primary key NOT NULL,
LastName varchar(255),
FirstName varchar(255),
Positions varchar(255),
TeamID varchar(255) FOREIGN KEY REFERENCES Teams(TeamID), 
PlayerValue INT
)

INSERT INTO Stadiums VALUES ('STD001','RDS Arena');
INSERT INTO Stadiums VALUES ('STD002','Thomond Park');
INSERT INTO Stadiums VALUES ('STD003','Kingspan Stadium');
INSERT INTO Stadiums VALUES ('STD004','The Sportsground');
INSERT INTO Stadiums VALUES ('STD005','DAM Health Stadium');
INSERT INTO Stadiums VALUES ('STD006','Scotstoun Stadium');
INSERT INTO Stadiums VALUES ('STD007','Cardiff Arms Park');
INSERT INTO Stadiums VALUES ('STD008','Swansea.com Stadium');
INSERT INTO Stadiums VALUES ('STD024','Parc y Scarlets');
INSERT INTO Stadiums VALUES ('STD009','Rodney Parade');
INSERT INTO Stadiums VALUES ('STD010','Stadio Comunale di Monigo');
INSERT INTO Stadiums VALUES ('STD011','Stadio Sergio Lanfranchi');
INSERT INTO Stadiums VALUES ('STD012','Loftus Versfeld');
INSERT INTO Stadiums VALUES ('STD013','Ellis Park');
INSERT INTO Stadiums VALUES ('STD014','Hollywoodbets Kings Park');
INSERT INTO Stadiums VALUES ('STD015','DHL Stadium');
INSERT INTO Stadiums VALUES ('STD016','Aviva Stadium');
INSERT INTO Stadiums VALUES ('STD017','Pairc Ui Chaoimh');
INSERT INTO Stadiums VALUES ('STD018','Principality Stadium');
INSERT INTO Stadiums VALUES ('STD019','Liberty Stadium');
INSERT INTO Stadiums VALUES ('STD020','Mbombela Stadium');
INSERT INTO Stadiums VALUES ('STD021','Toyota Stadium');
INSERT INTO Stadiums VALUES ('STD022','Murrayfield');
INSERT INTO Stadiums VALUES ('STD023','Stadio Olimpico');

UPDATE Stadiums
SET StadiumName ='Dexcom Stadium'
WHERE StadiumID = 'STD004'
UPDATE Stadiums
SET StadiumName ='Hive Stadium'
WHERE StadiumID = 'STD005'
UPDATE Stadiums
SET StadiumName = 'Hollywoodbets Kings Park'
WHERE StadiumID = 'STD014'


INSERT INTO Teams VALUES ('URC001','Benetton','STD010');
INSERT INTO Teams VALUES ('URC002','Cardiff','STD007');
INSERT INTO Teams VALUES ('URC003','Connacht','STD004');
INSERT INTO Teams VALUES ('URC004','Stormers','STD015');
INSERT INTO Teams VALUES ('URC005','Dragons','STD009');
INSERT INTO Teams VALUES ('URC006','Edinburgh','STD005');
INSERT INTO Teams VALUES ('URC007','Lions','STD013');
INSERT INTO Teams VALUES ('URC008','Glasgow Warriors','STD006');
INSERT INTO Teams VALUES ('URC009','Sharks','STD014');
INSERT INTO Teams VALUES ('URC010','Leinster','STD001');
INSERT INTO Teams VALUES ('URC011','Munster','STD002');
INSERT INTO Teams VALUES ('URC012','Ospreys','STD008');
INSERT INTO Teams VALUES ('URC013','Scarlets','STD024');
INSERT INTO Teams VALUES ('URC014','Ulster','STD003');
INSERT INTO Teams VALUES ('URC015','Bulls','STD012');
INSERT INTO Teams VALUES ('URC016','Zebre Parma','STD011');


INSERT INTO Players VALUES ('PL0001','Bleuler','Dian','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0002','Buthelezi','Phepsi','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0003','Dreyer','Ruan','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0004','Dyer','Thomas','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0005','Etzebeth','Eben','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0006','Ganyane','Phatu','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0007','Grobler','Gerbrandt','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0008','Hatton','Nick','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0009','Hugo','Reniel','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0010','Jacobs','Hanro','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0011','Jenkins','Jason','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0012','Jooste','Dan','Hooker','URC009', 0);
INSERT INTO Players VALUES ('PL0013','Koch','Vincent','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0014','Kolisi','Siya','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0015','Labuschagne','Jeandre','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0016','Mavasere','Tino','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0017','Mbatha','Fez','Hooker','URC009', 0);
INSERT INTO Players VALUES ('PL0018','Mbonambi','Bongi','Hooker','URC009', 0);
INSERT INTO Players VALUES ('PL0019','Mchunu','Ntuthuko','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0020','Mona','Kwezi','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0021','Nche','Ox','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0022','Ningiza','Siya','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0023','Nyakane','Trevor','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0024','Potgieter','Jannes','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0025','Rahl','Corne','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0026','Reyneke','Braam','Prop','URC009', 0);
INSERT INTO Players VALUES ('PL0027','Richardson','Dylan','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0028','Tshituka','Manu','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0029','Tshituka','Vincent','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0030','Venter','James','Loose Forward','URC009', 0);
INSERT INTO Players VALUES ('PL0031','Le Roux','Coetzee','Lock','URC009', 0);
INSERT INTO Players VALUES ('PL0032','Van Heerden','Emile','Lock','URC009', 0);


INSERT INTO Players VALUES ('PL0033','Am','Lukhanyo','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0034','Appollis','Diego','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0035','Cronje','Lionel','Fly-Half','URC009', 0);
INSERT INTO Players VALUES ('PL0036','Davids','Bradley','Scrum-half','URC009', 0);
INSERT INTO Players VALUES ('PL0037','Esterhuizen','Andre','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0038','Fassi','Aphelele','Fullback,Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0039','Fourie','Tiaan','Scrum-half','URC009', 0);
INSERT INTO Players VALUES ('PL0040','Hendrikse','Jaden','Scrum-half','URC009', 0);
INSERT INTO Players VALUES ('PL0041','Hendrikse','Jordan','Fly-half,Fullback','URC009', 0);
INSERT INTO Players VALUES ('PL0042','Hooker','Ethan','Centre,Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0043','Julius','Jurenzo','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0044','Keyter','Eduan','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0045','Mapimpi','Makazole','Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0050','Masuku','Siya','Fly-half','URC009', 0);
INSERT INTO Players VALUES ('PL0051','Meyer','Tian','Scrum-half','URC009', 0);
INSERT INTO Players VALUES ('PL0052','Penxe','Yaw','Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0053','Potgieter','Marnus','Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0054','Smith','Jean','Fly-half','URC009', 0);
INSERT INTO Players VALUES ('PL0055','Venter','Francois','Centre','URC009', 0);
INSERT INTO Players VALUES ('PL0056','Wehr','Gurshwin','Wing','URC009', 0);
INSERT INTO Players VALUES ('PL0057','Williams','Grant','Scrum-half','URC009', 0);
INSERT INTO Players VALUES ('PL0058','Wright','Cameron','Scrum-half','URC009', 0);


SELECT lastname, firstname, teamName
From Players
join Teams on Players.TeamID = Teams.TeamID
Where Positions like '%Lock%'

DROP TABLE Fixtures
CREATE TABLE Fixtures (
FixtureID VARCHAR(255) PRIMARY KEY NOT NULL,
HomeTeam VARCHAR(255) FOREIGN KEY REFERENCES Teams(TeamID),
AwayTeam VARCHAR(255) FOREIGN KEY REFERENCES Teams(TeamID),
FixtureDate SMALLDATETIME,
HomeScore INT,
AwayScore INT,
Stadium VARCHAR(255) FOREIGN KEY REFERENCES Stadiums(StadiumID)
)


INSERT INTO Fixtures VALUES ('FX001','URC008','URC013','2024-11-29 19:35:00',0,0,'STD006');
INSERT INTO Fixtures VALUES ('FX002','URC014','URC010','2024-11-29 19:35:00',0,0,'STD003');
INSERT INTO Fixtures VALUES ('FX003','URC009','URC004','2024-11-30 15:00:00',0,0,'STD014');
INSERT INTO Fixtures VALUES ('FX004','URC002','URC005','2024-11-30 17:15:00',0,0,'STD007');
INSERT INTO Fixtures VALUES ('FX005','URC003','URC015','2024-11-30 17:30:00',0,0,'STD004');
INSERT INTO Fixtures VALUES ('FX006','URC011','URC007','2024-11-30 19:35:00',0,0,'STD002');
INSERT INTO Fixtures VALUES ('FX007','URC016','URC012','2024-11-30 19:35:00',0,0,'STD011');
INSERT INTO Fixtures VALUES ('FX008','URC006','URC001','2024-11-30 19:35:00',0,0,'STD005');


SELECT * FROM Stadiums
SELECT * FROM Teams

SELECT t1.TeamName as Home, t2.TeamName as Away, FixtureDate, StadiumName
FROM Fixtures
JOIN Teams t1 on t1.TeamID = Fixtures.HomeTeam
JOIN Teams t2 on t2.TeamID = Fixtures.AwayTeam
JOIN Stadiums ON Stadiums.StadiumID = Fixtures.Stadium
WHERE MONTH(FixtureDate) = 11 and DAY(FixtureDate) = 30


CREATE TABLE Coaches (
CoachID VARCHAR(255) PRIMARY KEY NOT NULL,
LastName VARCHAR(255),
FirstName VARCHAR(255),
TeamID VARCHAR(255) FOREIGN KEY REFERENCES Teams(TeamID)
)


INSERT INTO Coaches VALUES ('CCH001','Bortolami','Marco','URC001');
INSERT INTO Coaches VALUES ('CCH002','Sherratt','Matt','URC002');
INSERT INTO Coaches VALUES ('CCH003','Wilkins','Pete','URC003');
INSERT INTO Coaches VALUES ('CCH004','Dobson','John','URC004');
INSERT INTO Coaches VALUES ('CCH005','Flanagan','Dai','URC005');
INSERT INTO Coaches VALUES ('CCH006','Everitt','Sean','URC006');
INSERT INTO Coaches VALUES ('CCH007','van Rooyen','Ivan','URC007');
INSERT INTO Coaches VALUES ('CCH008','Smith','Franco','URC008');
INSERT INTO Coaches VALUES ('CCH009','Plumtree','John','URC009');
INSERT INTO Coaches VALUES ('CCH010','Cullen','Leo','URC010');
INSERT INTO Coaches VALUES ('CCH011','Rowntree','Graham','URC011');
INSERT INTO Coaches VALUES ('CCH012','Booth','Toby','URC012');
INSERT INTO Coaches VALUES ('CCH013','Peel','Dwayne','URC013');
INSERT INTO Coaches VALUES ('CCH014','McFarland','Dan','URC014');
INSERT INTO Coaches VALUES ('CCH015','White','Jake','URC015');
INSERT INTO Coaches VALUES ('CCH016','Roselli','Fabio','URC016');

SELECT FirstName, LastName, TeamName
FROM Teams
JOIN Coaches ON Teams.TeamID = Coaches.TeamID
order by LastName

CREATE TABLE Users(
UserID VARCHAR(255) PRIMARY KEY NOT NULL,
Username VARCHAR(255), 
Email VARCHAR(255)
)

CREATE TABLE UserSquad(
SquadPlayerID VARCHAR(255) PRIMARY KEY NOT NULL,
UserID VARCHAR(255) FOREIGN KEY REFERENCES Users(UserID),
Position int, 
PlayerID VARCHAR(255) FOREIGN KEY REFERENCES Players(PlayerID)
)
--Once squad is selected select the starting team for the weekend. A list of squad picks as a variable from 1 to 23
CREATE TABLE UserTeamSheet(
TeamSheetID VARCHAR(255) PRIMARY KEY NOT NULL,
WeekendDate SMALLDATETIME,
UserID VARCHAR(255) FOREIGN KEY REFERENCES Users(UserID),
PlayerIDs VARCHAR(255)
)

--Leinster Team 

INSERT INTO Players VALUES ('PL0059','Baird','Ryan','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0060','Barron','Lee','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0061','Boyle','Jack','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0062','Clarkson','Tom','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0063','Conan','Jack','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0064','Connors','Will','Flanker','URC010', 0);
INSERT INTO Players VALUES ('PL0065','Corrigan','Billy','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0066','Culhane','James','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0067','Deegan','Max','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0068','Deeny','Brian','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0069','Dorris','Caelan','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0070','Furlong','Tadhg','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0071','Healy','Cian','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0072','Kelleher','Ronan','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0073','McCarthy','Joe','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0074','McCarthy','Gus','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0075','McKee','John','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0076','Milne','Michael','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0077','O''Tighearnaigh','Conor','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0078','Penny','Scott','Loose Forward','URC010', 0);
INSERT INTO Players VALUES ('PL0079','Porter','Andrew','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0080','Ryan','James','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0081','Sheehan','Dan','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0082','Slimani','Rabah','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0083','Smyth','Stephen','Hooker','URC010', 0);
INSERT INTO Players VALUES ('PL0084','Smyth','Niall','Prop','URC010', 0);
INSERT INTO Players VALUES ('PL0085','Snyman','RG','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0086','Spicer','Alan','Lock','URC010', 0);
INSERT INTO Players VALUES ('PL0087','Van Der Flier','Josh','Loose Forward','URC010', 0);

INSERT INTO Players VALUES ('PL0088','Arenzana-King','Aitzol','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0089','Byrne','Harry','Fly-half','URC010', 0);
INSERT INTO Players VALUES ('PL0090','Byrne','Ross','Fly-Half','URC010', 0);
INSERT INTO Players VALUES ('PL0091','Cooney','Hugh','Centre','URC010', 0);
INSERT INTO Players VALUES ('PL0092','Foley','Cormac','Scrum-half','URC010', 0);
INSERT INTO Players VALUES ('PL0093','Frawley','Ciaran','Fly-half','URC010', 0);
INSERT INTO Players VALUES ('PL0094','Gabriel','Casper','Fly-half','URC010', 0);
INSERT INTO Players VALUES ('PL0095','Gibson-Park','Jamison','Scrum-half','URC010', 0);
INSERT INTO Players VALUES ('PL0096','Henshaw','Robbie','Centre','URC010', 0);
INSERT INTO Players VALUES ('PL0097','Keenan','Hugo','Fullback','URC010', 0);
INSERT INTO Players VALUES ('PL0098','Larmour','Jordan','Wing,Fullback','URC010', 0);
INSERT INTO Players VALUES ('PL0099','Lowe','James','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0100','McGrath','Luke','Scrum-half','URC010', 0);
INSERT INTO Players VALUES ('PL0101','McLaughlin','Hugo','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0102','Moloney','Ruben','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0103','O''Brien','Jimmy','Centre','URC010', 0);
INSERT INTO Players VALUES ('PL0104','O''Brien','Tommy','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0105','Osborne','Jamie','Centre','URC010', 0);
INSERT INTO Players VALUES ('PL0106','Osborne','Andrew','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0107','Prendergast','Sam','Fly-half','URC010', 0);
INSERT INTO Players VALUES ('PL0108','Ringrose','Garry','Centre','URC010', 0);
INSERT INTO Players VALUES ('PL0109','Russell','Rob','Wing','URC010', 0);
INSERT INTO Players VALUES ('PL0110','Tector','Charlie','Fly-half','URC010', 0);
INSERT INTO Players VALUES ('PL0111','Turner','Liam','Centre','URC010', 0);


INSERT INTO Players VALUES ('PL0112','Aminu','Destiny','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0113','Avaca','Enzo','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0114','Bernasconi','Bautista','Hooker','URC001', 0);
INSERT INTO Players VALUES ('PL0115','Cannone','Lorenzo','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0116','Cannone','Niccolo','Lock','URC001', 0);
INSERT INTO Players VALUES ('PL0117','Favretto','Riccardo','Lock','URC001', 0);
INSERT INTO Players VALUES ('PL0118','Ferrari','Simone','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0119','Gallo','Thomas','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0120','Gallorini','Marcos','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0121','Genovese','Riccardo','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0122','Halafihi','Toa','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0123','Iachizzi','Edoardo','Lock','URC001', 0);
INSERT INTO Players VALUES ('PL0124','Izekor','Alessandro','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0125','Koegelenberg','Gideon','Lock','URC001', 0);
INSERT INTO Players VALUES ('PL0126','Lamaro','Michele','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0127','Maile','Siua','Hooker','URC001', 0);
INSERT INTO Players VALUES ('PL0128','Manfredi','Marco','Hooker','URC001', 0);
INSERT INTO Players VALUES ('PL0129','Marini','Giulio','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0130','Negri','Sebastian','Loose Forward','URC001', 0);
INSERT INTO Players VALUES ('PL0131','Nemer','Ivan','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0132','Pasquali','Mirco','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0133','Tetaz Chaparro','Nahuel','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0134','Zilocchi','Giosue','Prop','URC001', 0);
INSERT INTO Players VALUES ('PL0135','Zuliani','Manuel','Loose Forward','URC001', 0);

INSERT INTO Players VALUES ('PL0136','Albornoz','Tomas','Fly-half','URC001', 0);
INSERT INTO Players VALUES ('PL0137','Bazan Velez','Lautaro','Scrum-half','URC001', 0);
INSERT INTO Players VALUES ('PL0138','Brex','Nacho','Centre','URC001', 0);
INSERT INTO Players VALUES ('PL0139','Casilio','Niccolo','Scrum-half','URC001', 0);
INSERT INTO Players VALUES ('PL0140','Drago','Filippo','Centre','URC001', 0);
INSERT INTO Players VALUES ('PL0141','Fekitoa','Malakai','Centre','URC001', 0);
INSERT INTO Players VALUES ('PL0142','Gallagher','Matt','Fullback','URC001', 0);
INSERT INTO Players VALUES ('PL0143','Garbisi','Alessandro','Scrum-half','URC001', 0);
INSERT INTO Players VALUES ('PL0144','Lynaugh','Louis','Wing','URC001', 0);
INSERT INTO Players VALUES ('PL0145','Marin','Leonardo','Fly-half','URC001', 0);
INSERT INTO Players VALUES ('PL0146','Mendy','Ignacio','Wing','URC001', 0);
INSERT INTO Players VALUES ('PL0147','Menoncello','Tommaso','Centre','URC001', 0);
INSERT INTO Players VALUES ('PL0148','Odogwu','Paolo','Wing','URC001', 0);
INSERT INTO Players VALUES ('PL0149','Ratave','Onisi','Wing','URC001', 0);
INSERT INTO Players VALUES ('PL0150','Smith','Rhyno','Fullback','URC001', 0);
INSERT INTO Players VALUES ('PL0151','Umaga','Jacob','Fly-half','URC001', 0);
INSERT INTO Players VALUES ('PL0152','Uren','Andy','Scrum-half','URC001', 0);
INSERT INTO Players VALUES ('PL0153','Zanon','Marco','Centre','URC001', 0);






INSERT INTO Players VALUES ('PL0154','Assiratti','Keiron','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0155','Barratt','Rhys','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0156','Belcher','Liam','Hooker','URC002', 0);
INSERT INTO Players VALUES ('PL0157','Botham','James','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0158','Bradley','Gwilym','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0159','Byrne','Ed','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0160','Cowell','Joe','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0161','Daniel','Efan','Hooker','URC002', 0);
INSERT INTO Players VALUES ('PL0162','Davies','Seb','Lock','URC002', 0);
INSERT INTO Players VALUES ('PL0163','Davies-King','Will','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0164','Domachowski','Corey','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0165','Donnell','Ben','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0166','Faletau','Taulupe','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0167','Hughes','Dafydd','Hooker','URC002', 0);
INSERT INTO Players VALUES ('PL0168','Lawrence','Alun','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0169','Litterick','Rhys','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0170','Lloyd','Evan','Hooker','URC002', 0);
INSERT INTO Players VALUES ('PL0171','Mann','Alex','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0172','Martin','Mackenzie','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0173','McNally','Josh','Lock','URC002', 0);
INSERT INTO Players VALUES ('PL0174','Southworth','Danny','Prop','URC002', 0);
INSERT INTO Players VALUES ('PL0175','Thomas','Dan','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0176','Thornton','Rory','Lock','URC002', 0);
INSERT INTO Players VALUES ('PL0177','Williams','Teddy','Lock','URC002', 0);
INSERT INTO Players VALUES ('PL0178','Young','Thomas','Loose Forward','URC002', 0);
INSERT INTO Players VALUES ('PL0179','De La Rua','Lucas','Loose Forward','URC002', 0);

INSERT INTO Players VALUES ('PL0180','Bevan','Ellis','Scrum-half','URC002', 0);
INSERT INTO Players VALUES ('PL0181','Cabango','Theo','Wing','URC002', 0);
INSERT INTO Players VALUES ('PL0182','Davies','Aled','Scrum-half','URC002', 0);
INSERT INTO Players VALUES ('PL0183','Grady','Mason','Centre','URC002', 0);
INSERT INTO Players VALUES ('PL0184','Hamer-Webb','Gabe','Wing','URC002', 0);
INSERT INTO Players VALUES ('PL0185','Jennings','Rory','Cenre','URC002', 0);
INSERT INTO Players VALUES ('PL0186','Lee-Lo','Ray','Centre','URC002', 0);
INSERT INTO Players VALUES ('PL0187','Millard','Harri','Centre','URC002', 0);
INSERT INTO Players VALUES ('PL0188','Mulder','Johan','Scrum-half','URC002', 0);
INSERT INTO Players VALUES ('PL0189','Sheedy','Callum','Fly-half','URC002', 0);
INSERT INTO Players VALUES ('PL0190','Stephens','Iwan','Wing','URC002', 0);
INSERT INTO Players VALUES ('PL0191','Thomas','Ben','Centre','URC002', 0);
INSERT INTO Players VALUES ('PL0192','Winnet','Cam','Fullback','URC002', 0);
INSERT INTO Players VALUES ('PL0193','De Beer','Tinus','Fly-half','URC002', 0);



INSERT INTO Players VALUES ('PL0194','Aungier','Jack','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0195','Bealham','Finlay','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0196','Boyle','Paul','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0197','Buckley','Dennis','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0198','Dooley','Peter','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0199','Dowling','Oisin','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0200','Duggan','Jordan','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0201','Heffernan','Dave','Hooker','URC003', 0);
INSERT INTO Players VALUES ('PL0202','Hurley-Langton','Shamus','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0203','Illo','Sam','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0204','Jansen','Sean','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0205','Joyce','Joe','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0206','Lasisi','Temi','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0207','McBurney','Adam','Hooker','URC003', 0);
INSERT INTO Players VALUES ('PL0208','McCormack','Oisin','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0209','Murphy','Josh','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0210','Murray','Darragh','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0211','Murray','Niall','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0212','O''Brien','Sean','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0213','O''Connor','David','Lock','URC003', 0);
INSERT INTO Players VALUES ('PL0214','Oliver','Conor','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0215','Prendergast','Cian','Loose Forward','URC003', 0);
INSERT INTO Players VALUES ('PL0216','Tierney-Martin','Dylan','Hooker','URC003', 0);
INSERT INTO Players VALUES ('PL0217','Ward','Charlie','Prop','URC003', 0);
INSERT INTO Players VALUES ('PL0218','De Buitlear','Eoin','Hooker','URC003', 0);

INSERT INTO Players VALUES ('PL0219','Aki','Bundee','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0220','Blade','Colin','Scrum-half','URC003', 0);
INSERT INTO Players VALUES ('PL0221','Bolton','Shayne','Fullback','URC003', 0);
INSERT INTO Players VALUES ('PL0222','Carty','Jack','Fly-half','URC003', 0);
INSERT INTO Players VALUES ('PL0223','Santiago','Cordero','Fullback,Wing','URC003', 0);
INSERT INTO Players VALUES ('PL0224','Devine','Matthew','Scrum-half','URC003', 0);
INSERT INTO Players VALUES ('PL0225','Forde','Cathal','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0226','Gavin','Hugh','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0227','Hanrahan','JJ','Fly-half','URC003', 0);
INSERT INTO Players VALUES ('PL0228','Hansen','Mack','Wing','URC003', 0);
INSERT INTO Players VALUES ('PL0229','Hawkshaw','David','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0230','Ioane','Josh','Fly-half','URC003', 0);
INSERT INTO Players VALUES ('PL0231','Jennings','Shane','Fullback','URC003', 0);
INSERT INTO Players VALUES ('PL0232','Mullins','Chay','Wing','URC003', 0);
INSERT INTO Players VALUES ('PL0233','Murphy','Ben','Scrum-half','URC003', 0);
INSERT INTO Players VALUES ('PL0234','O''Conor','Piers','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0235','Porch','John','Fullback','URC003', 0);
INSERT INTO Players VALUES ('PL0236','Ralston','Byron','Centre','URC003', 0);
INSERT INTO Players VALUES ('PL0237','Reilly','Colm','Scrum-half','URC003', 0);
INSERT INTO Players VALUES ('PL0238','Smith','Andrew','Wing','URC003', 0);



INSERT INTO Players VALUES ('PL0239','Dixon','Ben-Jason','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0240','Dweba','Joseph','Hooker','URC004', 0);
INSERT INTO Players VALUES ('PL0241','Engelbrecht','Willie','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0242','Evans','Connor','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0243','Ewers','Dave','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0244','Fouche','Neethling','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0245','Fourie','Deon','Hooker,Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0246','Harris','Brok','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0247','Kitshoff','Steven','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0248','Kotze','JJ','Hooker','URC004', 0);
INSERT INTO Players VALUES ('PL0249','Lyons','Leon','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0250','Malherbe','Frans','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0251','Moerat','Salmaan','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0252','Morabe','Keke','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0253','Nel','Louw','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0254','Ntubeni','Scarra','Hooker','URC004', 0);
INSERT INTO Players VALUES ('PL0255','Porter','Gary','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0256','Rooas','Evan','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0257','Sandi','Sazi','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0258','Schickerling','JD','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0259','Sithole','Sti','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0260','Smith','Andre','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0261','Stassen','Hendre','Lock','URC004', 0);
INSERT INTO Players VALUES ('PL0262','Theunissen','Marcel','Loose Forward','URC004', 0);
INSERT INTO Players VALUES ('PL0263','Venter','Andre-Hugo','Hooker','URC004', 0);
INSERT INTO Players VALUES ('PL0264','Vermaak','Ali','Prop','URC004', 0);
INSERT INTO Players VALUES ('PL0265','Van Heerden','Ruben','Lock','URC004', 0);

INSERT INTO Players VALUES ('PL0266','Blommetjies','Clayton','Fullback','URC004', 0);
INSERT INTO Players VALUES ('PL0267','Davids','Angelo','Wing','URC004', 0);
INSERT INTO Players VALUES ('PL0268','Duvenage','Dewaldt','Scrum-half','URC004', 0);
INSERT INTO Players VALUES ('PL0269','Feinberg-Mngomezulu','Sacha','Fly-half,Centre','URC004', 0);
INSERT INTO Players VALUES ('PL0270','Gelant','Warrick','Fullback,Wing','URC004', 0);
INSERT INTO Players VALUES ('PL0271','Hartzenberg','Suleiman','Centre','URC004', 0);
INSERT INTO Players VALUES ('PL0272','Jantjies','Herschel','Scrum-half','URC004', 0);
INSERT INTO Players VALUES ('PL0273','Khan','Imad','Scrum-half','URC004', 0);
INSERT INTO Players VALUES ('PL0274','Libbok','Manie','Fly-half','URC004', 0);
INSERT INTO Players VALUES ('PL0275','Loader','Ben','Wing','URC004', 0);
INSERT INTO Players VALUES ('PL0276','Matthee','Jurie','Fly-half','URC004', 0);
INSERT INTO Players VALUES ('PL0277','Nel','Ruhan','Centre','URC004', 0);
INSERT INTO Players VALUES ('PL0278','Simelane','Wandisile','Centre','URC004', 0);
INSERT INTO Players VALUES ('PL0279','Skosan','Courtnall','Wing','URC004', 0);
INSERT INTO Players VALUES ('PL0280','Ungerer','Stefan','Scrum-half','URC004', 0);
INSERT INTO Players VALUES ('PL0281','Willemse','Damian','Centre,Fullback,Flyhalf','URC004', 0);
INSERT INTO Players VALUES ('PL0282','Zas','Leolin','Wing','URC004', 0);
INSERT INTO Players VALUES ('PL0283','De Wet','Paul','Scrum-half','URC004', 0);
INSERT INTO Players VALUES ('PL0284','Du Plessis','Jean-Luc','Fly-half','URC004', 0);
INSERT INTO Players VALUES ('PL0285','Du Plessis','Dan','Centre','URC004', 0);




INSERT INTO Players VALUES ('PL0286','Arhip','Dimitri','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0287','Basham','Taine','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0288','Benjamin','James','Hooker','URC005', 0);
INSERT INTO Players VALUES ('PL0289','Brown','Leon','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0290','Burrows','Ollie','Hooker','URC005', 0);
INSERT INTO Players VALUES ('PL0291','Carter','Ben','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0292','Coghlan','Brodie','Hooker','URC005', 0);
INSERT INTO Players VALUES ('PL0293','Coleman','Chris','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0294','Cummins','Steve','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0295','Joe','Davies','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0296','Fairbrother','Lloyd','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0297','Funaki','Solomone','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0298','Jones','Cameron','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0299','Jones','Rhodri','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0300','Keddie','Harri','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0301','Langton-Cryer','Barny','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0302','Lewis-Hughes','Shane','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0303','Lydiate','Dan','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0304','Martinez Manzano','Rodrigo','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0305','Nott','George','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0306','Reynolds','Josh','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0307','Scarfe','Sam','Hooker','URC005', 0);
INSERT INTO Players VALUES ('PL0308','Screech','Matthew','Lock','URC005', 0);
INSERT INTO Players VALUES ('PL0309','Seiuli','Aki','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0310','Wainwright','Aaron','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0311','Woodman','Ryan','Loose Forward','URC005', 0);
INSERT INTO Players VALUES ('PL0312','Yendle','Luke','Prop','URC005', 0);
INSERT INTO Players VALUES ('PL0313','Young','George','Loose Forward','URC005', 0);

INSERT INTO Players VALUES ('PL0314','Ackerman','Harri','Centre','URC005', 0);
INSERT INTO Players VALUES ('PL0315','Andrew','Oli','Wing','URC005', 0);
INSERT INTO Players VALUES ('PL0316','Blacker','Dane','Scrum-half','URC005', 0);
INSERT INTO Players VALUES ('PL0317','Dyer','Rio','Wing','URC005', 0);
INSERT INTO Players VALUES ('PL0318','Evans','Lloyd','Fly-haLF','URC005', 0);
INSERT INTO Players VALUES ('PL0319','Evans','Cai','Fullback','URC005', 0);
INSERT INTO Players VALUES ('PL0320','Hewitt','Ashton','Wing','URC005', 0);
INSERT INTO Players VALUES ('PL0321','Hope','Che','Scrum-half','URC005', 0);
INSERT INTO Players VALUES ('PL0322','Hughes','Steph','Centre','URC005', 0);
INSERT INTO Players VALUES ('PL0323','Lloyd','Morgan','Scrum-half','URC005', 0);
INSERT INTO Players VALUES ('PL0324','O''Brien','Angus','Fullback','URC005', 0);
INSERT INTO Players VALUES ('PL0325','Owen','Aneurin','Centre','URC005', 0);
INSERT INTO Players VALUES ('PL0326','Reed','Will','Fly-half','URC005', 0);
INSERT INTO Players VALUES ('PL0327','Rosser','Ewan','Wing','URC005', 0);
INSERT INTO Players VALUES ('PL0328','Rosser','Jared','Wing','URC005', 0);
INSERT INTO Players VALUES ('PL0329','Westwood','Joe','Centre','URC005', 0);
INSERT INTO Players VALUES ('PL0340','Williams','Rhodri','Scrum-half','URC005', 0);
INSERT INTO Players VALUES ('PL0341','Williams','Jordan','Fullback','URC005', 0);
INSERT INTO Players VALUES ('PL0342','Wilson','Harry','Centre','URC005', 0);

update Players 
set Positions = 'Prop'
Where PlayerID = 'PL0019'

INSERT INTO Players VALUES ('PL0343','Ashman','Ewan','Hooker','URC006', 0);
INSERT INTO Players VALUES ('PL0344','Boyle','Connor','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0345','Bradbury','Magnus','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0346','Carmichael','Rob','Lock','URC006', 0);
INSERT INTO Players VALUES ('PL0347','Cherry','Dave','Hooker','URC006', 0);
INSERT INTO Players VALUES ('PL0348','Crosbie','Luke','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0349','Dodd','Tom','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0350','Gilchrist','Grant','Lock','URC006', 0);
INSERT INTO Players VALUES ('PL0351','Harrison','Paddy','Hooker','URC006', 0);
INSERT INTO Players VALUES ('PL0352','Hill','Paul','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0353','Hislop','Robin','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0354','Hodgson','Jamie','Lock','URC006', 0);
INSERT INTO Players VALUES ('PL0355','Jones','Mikey','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0356','McConnell','Liam','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0357','Morris','Harri','Hooker','URC006', 0);
INSERT INTO Players VALUES ('PL0358','Muncaster','Ben','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0359','Rae','D''Arcy','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0360','Ritchie','Jamie','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0361','Schoeman','Pierre','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0362','Sebastian','Javan','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0363','Skinner','Sam','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0364','Sykes','Marshall','Lock','URC006', 0);
INSERT INTO Players VALUES ('PL0365','Venter','Boan','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0366','Waston','Hamish','Loose Forward','URC006', 0);
INSERT INTO Players VALUES ('PL0367','Williams','Angus','Prop','URC006', 0);
INSERT INTO Players VALUES ('PL0368','Young','Glen','Lock','URC006', 0);

INSERT INTO Players VALUES ('PL0369','Bennett','Mark','Centre','URC006', 0);
INSERT INTO Players VALUES ('PL0370','Currie','Matt','Centre','URC006', 0);
INSERT INTO Players VALUES ('PL0371','Goosen','Wes','Wing','URC006', 0);
INSERT INTO Players VALUES ('PL0372','Graham','Darcy','Wing','URC006', 0);
INSERT INTO Players VALUES ('PL0373','Healy','Ben','Fly-half','URC006', 0);
INSERT INTO Players VALUES ('PL0374','Henry','Jake','Wing','URC006', 0);
INSERT INTO Players VALUES ('PL0375','Lang','James','Centre','URC006', 0);
INSERT INTO Players VALUES ('PL0376','McCann','Ross','Wing','URC006', 0);
INSERT INTO Players VALUES ('PL0377','Paterson','Harry','Fullback','URC006', 0);
INSERT INTO Players VALUES ('PL0378','Price','Ali','Scrm-half','URC006', 0);
INSERT INTO Players VALUES ('PL0379','Scott','Cammy','Gly-half','URC006', 0);
INSERT INTO Players VALUES ('PL0380','Scott','Matt','Centre','URC006', 0);
INSERT INTO Players VALUES ('PL0381','Shiel','Charlie','Scrum-half','URC006', 0);
INSERT INTO Players VALUES ('PL0382','Sweeney','Nathan','Wing','URC006', 0);
INSERT INTO Players VALUES ('PL0383','Thompson','Ross','Fly-half','URC006', 0);
INSERT INTO Players VALUES ('PL0384','Tuipulotu','Mosese','Centre','URC006', 0);
INSERT INTO Players VALUES ('PL0385','Vellacott','Ben','Scrum-half','URC006', 0);
INSERT INTO Players VALUES ('PL0386','Van Der Merwe','Duhan','Wing','URC006', 0);



INSERT INTO Players VALUES ('PL0387','Botha','PJ','Hooker','URC007', 0);
INSERT INTO Players VALUES ('PL0388','Brandon','Morne','Hooker','URC007', 0);
INSERT INTO Players VALUES ('PL0389','Cairns','Jarod','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0390','Delport','Ruan','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0391','Esterhuizen','Izan','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0392','Grobbelaar','Marno','Hooker','URC007', 0);
INSERT INTO Players VALUES ('PL0393','Horn','Francke','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0394','Kotze','SJ','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0395','Landsberg','Darrien','Lock','URC007', 0);
INSERT INTO Players VALUES ('PL0396','Mabece','Sivu','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0397','Marais','Franco','Hooker','URC007', 0);
INSERT INTO Players VALUES ('PL0398','Naude','Morgan','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0399','Nothnagel','Reinhard','Lock','URC007', 0);
INSERT INTO Players VALUES ('PL0400','Ntlabakanye','Asenathi','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0401','Oosthuizen','Etienne','Lock','URC007', 0);
INSERT INTO Players VALUES ('PL0402','Pohlmann','Heiko','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0403','Pretorius','JC','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0404','Qoma','Siba','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0405','Roets','Raynard','Lock','URC007', 0);
INSERT INTO Players VALUES ('PL0406','Schoeman','Ruben','Lock','URC007', 0);
INSERT INTO Players VALUES ('PL0407','Schoeman','RF','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0408','Schoeman','Juan','Prop','URC007', 0);
INSERT INTO Players VALUES ('PL0409','Straeuli','Ruhan','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0410','Venter','Ruhan','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0411','Visagie','Jaco','Hooker','URC007', 0);
INSERT INTO Players VALUES ('PL0412','Wessels','Tiaan','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0413','Du Plessis','Renzo','Loose Forward','URC007', 0);
INSERT INTO Players VALUES ('PL0414','Van Vuuren','Conrad','Prop','URC007', 0);

INSERT INTO Players VALUES ('PL0415','Cronje','Erich','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0416','Hansen','Baldwin','Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0417','Horn','Layton','Scrum-half','URC007', 0);
INSERT INTO Players VALUES ('PL0418','Horn','Quan','Fullback,Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0419','Jonker','Rynhardt','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0420','Kriel','Richard','Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0421','Lombard','Gianni','Fly-half','URC007', 0);
INSERT INTO Players VALUES ('PL0422','Louw','Marius','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0423','Mafura','Tapiwa','Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0424','Maxwane','Rabz','Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0425','Mpeku','Kelly','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0426','Nohamba','Sanele','Scrum-half,Fly-half','URC007', 0);
INSERT INTO Players VALUES ('PL0427','Rass','Manuel','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0428','Smith','Keagan','Wing','URC007', 0);
INSERT INTO Players VALUES ('PL0429','Steyn','Nico','Scrum-half','URC007', 0);
INSERT INTO Players VALUES ('PL0430','Wolhuter','Kade','Fly-half','URC007', 0);
INSERT INTO Players VALUES ('PL0431','Du Plessis','Zander','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0432','Van Wyk','Henco','Centre','URC007', 0);
INSERT INTO Players VALUES ('PL0433','Van Den Berg','Morne','Scrum-half','URC007', 0);
INSERT INTO Players VALUES ('PL0434','Van Der Merwe','Edwill','Wing','URC007', 0);


INSERT INTO Players VALUES ('PL0435','Bhatti','Jamie','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0436','Brown','Gregor','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0437','Cummings','Scott','Lock','URC008', 0);
INSERT INTO Players VALUES ('PL0438','Darge','Rory','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0439','Dell','Alan','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0440','Dempsey','Jack','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0441','Fagerson','Matt','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0442','Fagerson','Zander','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0443','Ferrie','Euan','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0444','Fraser','Angus','Hooker','URC008', 0);
INSERT INTO Players VALUES ('PL0445','Gray','Richie','Lock','URC008', 0);
INSERT INTO Players VALUES ('PL0446','Hiddleston','Gregor','Hooker','URC008', 0);
INSERT INTO Players VALUES ('PL0447','Mann','Jack','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0448','Matthews','Johnny','Hooker','URC008', 0);
INSERT INTO Players VALUES ('PL0449','McBeth','Nathan','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0450','Miller','Ally','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0451','Richardson','Fin','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0452','Samuel','Alex','Lock','URC008', 0);
INSERT INTO Players VALUES ('PL0453','Schickerling','Patrick','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0454','Stewart','Grant','Hooker','URC008', 0);
INSERT INTO Players VALUES ('PL0455','Sutherland','Rory','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0456','Talakai','Sam','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0457','Vailanu','Sione','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0458','Venter','Henco','Loose Forward','URC008', 0);
INSERT INTO Players VALUES ('PL0459','Walker','Murphy','Prop','URC008', 0);
INSERT INTO Players VALUES ('PL0460','Williamson','Max','Lock','URC008', 0);
INSERT INTO Players VALUES ('PL0461','Du Preez','JP','Lock','URC008', 0);

INSERT INTO Players VALUES ('PL0462','Afshar','Ben','Scrum-half','URC008', 0);
INSERT INTO Players VALUES ('PL0463','Cancelliere','Seb','Wing','URC008', 0);
INSERT INTO Players VALUES ('PL0464','Cordero','Facundo','Wing','URC008', 0);
INSERT INTO Players VALUES ('PL0465','Dobie','Jamie','Scrum-half','URC008', 0);
INSERT INTO Players VALUES ('PL0466','Hastings','Adam','Fly-half','URC008', 0);
INSERT INTO Players VALUES ('PL0467','Horme','George','Scrum-half','URC008', 0);
INSERT INTO Players VALUES ('PL0468','Jones','Huw','Centre','URC008', 0);
INSERT INTO Players VALUES ('PL0469','Jordan','Tom','Fly-half','URC008', 0);
INSERT INTO Players VALUES ('PL0470','Kennedy','Sean','Scrum-half','URC008', 0);
INSERT INTO Players VALUES ('PL0471','McDowall','Stafford','Centre','URC008', 0);
INSERT INTO Players VALUES ('PL0472','McKay','Josh','Fullback','URC008', 0);
INSERT INTO Players VALUES ('PL0473','Munn','Duncan','Centre','URC008', 0);
INSERT INTO Players VALUES ('PL0474','Rowe','Kyle','Wing','URC008', 0);
INSERT INTO Players VALUES ('PL0475','Smith','Ollie','Wing','URC008', 0);
INSERT INTO Players VALUES ('PL0476','Steyn','Kyle','Wing','URC008', 0);
INSERT INTO Players VALUES ('PL0477','Tuipulotu','Sione','Centre','URC008', 0);
INSERT INTO Players VALUES ('PL0478','Weir','Duncan','Fly-half','URC008', 0);



INSERT INTO Players VALUES ('PL0479','Ahern','Tom','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0480','Archer','Stephen','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0481','Barron','Diarmuid','Hooker','URC011', 0);
INSERT INTO Players VALUES ('PL0482','Beirne','Tadhg','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0483','Buckley','Scott','Hooker','URC011', 0);
INSERT INTO Players VALUES ('PL0484','Clarke','Eoghan','Hooker','URC011', 0);
INSERT INTO Players VALUES ('PL0485','Coombes','Gavin','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0486','Daly','Jack','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0487','Donnelly','Marik','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0488','Edogbo','Sean','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0489','Foxe','Ronan','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0490','Foy','Michael','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0491','Gleeson','Brian','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0492','Hodnett','John','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0493','Hurley','Cian','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0494','Jager','Oli','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0495','Kendellen','Alex','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0496','Kilcoyne','Dave','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0497','Kleyn','Jean','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0498','Loughman','Jeremy','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0499','McSweeney','Darragh','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0500','Murphy','Luke','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0501','O''Connell','Evan','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0502','O''Donoghue','Jack','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0503','O''Mahony','Peter','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0504','Quinn','Ruadhan','Loose Forward','URC011', 0);
INSERT INTO Players VALUES ('PL0505','Ryan','Kieran','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0506','Ryan','John','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0507','Salanoa','Roman','Prop','URC011', 0);
INSERT INTO Players VALUES ('PL0508','Scannell','Niall','Hooker','URC011', 0);
INSERT INTO Players VALUES ('PL0509','Sheahan','Danny','Hooker','URC011', 0);
INSERT INTO Players VALUES ('PL0510','Wycherley','Fineen','Lock','URC011', 0);
INSERT INTO Players VALUES ('PL0511','Wycherley','Josh','','URC011', 0);

INSERT INTO Players VALUES ('PL0512','Abrahams','Thaakir','Wing','URC011', 0);
INSERT INTO Players VALUES ('PL0513','Burns','Billy','Fly-half','URC011', 0);
INSERT INTO Players VALUES ('PL0514','Butler','Tony','Fly-half','URC011', 0);
INSERT INTO Players VALUES ('PL0515','Campbell','Patrick','Fullback','URC011', 0);
INSERT INTO Players VALUES ('PL0516','Casey','Craig','Scrum-half','URC011', 0);
INSERT INTO Players VALUES ('PL0517','Coombes','Liam','Fullback','URC011', 0);
INSERT INTO Players VALUES ('PL0518','Coughlan','Ethan','Scrum-half','URC011', 0);
INSERT INTO Players VALUES ('PL0519','Crowley','Jack','Fly-half','URC011', 0);
INSERT INTO Players VALUES ('PL0520','Daly','Shane','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0521','Farrell','Tom','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0522','Fitzgerald','Bryan','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0523','Gibbons','Fionn','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0524','Haley','Mike','Fullback','URC011', 0);
INSERT INTO Players VALUES ('PL0525','Hicks','Dylan','Fly-half','URC011', 0);
INSERT INTO Players VALUES ('PL0526','Kilgallen','Diarmuid','Wing','URC011', 0);
INSERT INTO Players VALUES ('PL0527','McCarthy','Shay','Wing','URC011', 0);
INSERT INTO Players VALUES ('PL0528','Murray','Connor','Scrum-half','URC011', 0);
INSERT INTO Players VALUES ('PL0529','Nankivell','Alex','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0530','Nash','Calvin','Wing','URC011', 0);
INSERT INTO Players VALUES ('PL0531','O''Brien','Sean','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0532','O''Connor','Ben','Fullback','URC011', 0);
INSERT INTO Players VALUES ('PL0533','O''Leary-Kareem','Gene','Centre','URC011', 0);
INSERT INTO Players VALUES ('PL0534','Oliver','Jack','Scrum-half','URC011', 0);
INSERT INTO Players VALUES ('PL0535','Patterson','Paddy','Scrum-half','URC011', 0);
INSERT INTO Players VALUES ('PL0536','Scannell','Rory','Centre','URC011', 0);

INSERT INTO Players VALUES ('PL0537','Beard','Adam','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0538','Botha','Tom','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0539','Davies','Tristan','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0540','Davies','Rhys','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0541','Deaves','Harri','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0542','Fender','James','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0543','Gemine','Dan','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0544','Greatbanks','Will','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0545','Henry','Rhys','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0546','Iorwerth-Scott','Mathi','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0547','Jones','Lewis','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0548','Jones','Cameron','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0549','Lake','Dewi','Hooker','URC012', 0);
INSERT INTO Players VALUES ('PL0550','Lewis','Ethan','Hooker','URC012', 0);
INSERT INTO Players VALUES ('PL0551','Lloyd','Lewis','Hooker','URC012', 0);
INSERT INTO Players VALUES ('PL0552','Morgan','Jac','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0553','Morris','Morgan','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0554','Morse','Morgan','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0555','Parry','Sam','Hooker','URC012', 0);
INSERT INTO Players VALUES ('PL0556','Phillips','Garyn','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0557','Ratti','James','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0558','Sutton','Huw','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0559','Thomas','Rhys','Lock','URC012', 0);
INSERT INTO Players VALUES ('PL0560','Thomas','Steff','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0561','Thomas','Gareth','Prop','URC012', 0);
INSERT INTO Players VALUES ('PL0562','Tipuric','Justin','Loose Forward','URC012', 0);
INSERT INTO Players VALUES ('PL0563','Warren','Ben','Prop','URC012', 0);


INSERT INTO Players VALUES ('PL0564','Boshoff','Evradi','Centre','URC012', 0);
INSERT INTO Players VALUES ('PL0565','Cokanasiga','Phil','Centre','URC012', 0);
INSERT INTO Players VALUES ('PL0566','Conbeer','Ryan','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0567','Davies','Luke','Scrum-half','URC012', 0);
INSERT INTO Players VALUES ('PL0568','Edwards','Dan','Fly-half','URC012', 0);
INSERT INTO Players VALUES ('PL0569','Edwards','Lewis','Fullback','URC012', 0);
INSERT INTO Players VALUES ('PL0570','Florence','Tom','Centre','URC012', 0);
INSERT INTO Players VALUES ('PL0571','Giles','Keelan','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0572','Hardy','Kieran','Scrum-half','URC012', 0);
INSERT INTO Players VALUES ('PL0573','Hopkins','Iestyn','Fullback','URC012', 0);
INSERT INTO Players VALUES ('PL0574','Houston','Harri','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0575','Kasende','Daniel','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0576','Lewis-Jenkins','Cory','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0577','Morgan','Luke','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0578','Morgan-Williams','Reuben','Scrum-half','URC012', 0);
INSERT INTO Players VALUES ('PL0579','Moyse','Connor','Wing','URC012', 0);
INSERT INTO Players VALUES ('PL0580','Nagy','Max','Fullback','URC012', 0);
INSERT INTO Players VALUES ('PL0581','Scully','Luke','Fly-half','URC012', 0);
INSERT INTO Players VALUES ('PL0582','Walsh','Jack','Fly-half','URC012', 0);
INSERT INTO Players VALUES ('PL0583','Watkin','Owen','Centre','URC012', 0);
INSERT INTO Players VALUES ('PL0584','Whitlock','Scott','Scrum-half','URC012', 0);
INSERT INTO Players VALUES ('PL0585','Williams','Owen','Fly-half','URC012', 0);
INSERT INTO Players VALUES ('PL0586','Williams','Keiran','Centre','URC012', 0);





INSERT INTO Players VALUES ('PL0587','Craig','Alex','Lock','URC013', 0);
INSERT INTO Players VALUES ('PL0588','Davis','Dan','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0589','Douglas','Max','Lock','URC013', 0);
INSERT INTO Players VALUES ('PL0590','Elias','Ryan','Hooker','URC013', 0);
INSERT INTO Players VALUES ('PL0591','Evans','Shaun','Hooker','URC013', 0);
INSERT INTO Players VALUES ('PL0592','Fifita','Vaea','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0593','Hawley','Gabe','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0594','Hepburn','Alec','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0595','Holz','Archer','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0596','Jones','Morgan','Lock','URC013', 0);
INSERT INTO Players VALUES ('PL0597','Lousi','Sam','Lcok','URC013', 0);
INSERT INTO Players VALUES ('PL0598','Macleod','Josh','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0599','Mathias','Kemsley','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0600','O''Connor','Sam','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0601','Plumtree','Taine','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0602','Price','Jac','Lock','URC013', 0);
INSERT INTO Players VALUES ('PL0603','Taylor','Jarrod','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0604','Thomas','Henry','Prop','URC013', 0);
INSERT INTO Players VALUES ('PL0605','Tuipulotu','Carwyn','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0606','Williams','Ben','Loose Forward','URC013', 0);
INSERT INTO Players VALUES ('PL0607','Van Der Merwe','Marnus','Hooker','URC013', 0);
INSERT INTO Players VALUES ('PL0608','Wainwright','Sam','Prop','URC013', 0);

INSERT INTO Players VALUES ('PL0609','Costelow','Sam','Fly-half','URC013', 0);
INSERT INTO Players VALUES ('PL0610','Davies','Gareth','Scrum-half','URC013', 0);
INSERT INTO Players VALUES ('PL0611','Davies','Jac','Fullback','URC013', 0);
INSERT INTO Players VALUES ('PL0612','Evans','Steff','Wing','URC013', 0);
INSERT INTO Players VALUES ('PL0613','Hughes','Archie','Scrum-half','URC013', 0);
INSERT INTO Players VALUES ('PL0614','James','Eddie','Centre','URC013', 0);
INSERT INTO Players VALUES ('PL0615','Jones','Efan','Scrum-half','URC013', 0);
INSERT INTO Players VALUES ('PL0616','Lewis','Tom','Wing','URC013', 0);
INSERT INTO Players VALUES ('PL0617','Lloyd','Ioan','Fly-half','URC013', 0);
INSERT INTO Players VALUES ('PL0618','Mee','Ellis','Wing','URC013', 0);
INSERT INTO Players VALUES ('PL0619','Murray','Blair','Wing','URC013', 0);
INSERT INTO Players VALUES ('PL0620','Nicholas','Ioan','Fullback','URC013', 0);
INSERT INTO Players VALUES ('PL0621','Page','Macs','Centre','URC013', 0);
INSERT INTO Players VALUES ('PL0622','Rogers','Tom','Wing','URC013', 0);
INSERT INTO Players VALUES ('PL0623','Ticombe','Charlie','Fly-half','URC013', 0);
INSERT INTO Players VALUES ('PL0624','Williams','Johnny','Centre','URC013', 0);





INSERT INTO Players VALUES ('PL0625','Andrew','John','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0626','Barrett','Corrie','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0627','Boal','Jack','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0628','Brigg','Tom','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0629','Crothers','Reuben','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0630','Doak','Cameron','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0631','Henderson','Iain','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0632','Herring','Rob','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0633','Hopes','Joe','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0634','Irvine','Charlie','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0635','Izuchukwu','Cormac','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0636','McCAnn','Dave','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0637','McCormick','James','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0638','McElroy','Tadgh','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0639','McKillop','James','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0640','McNabney','James','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0641','O''Connor','Alan','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0642','O''Sullivan','Eric','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0643','O''Toole','Tom','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0644','Rea','Marcus','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0645','Rea','Matty','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0646','Reffell','Sean','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0647','Reid','Callum','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0648','Sheridan','Harry','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0649','Solomon','Zac','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0650','Stevens','Josh','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0651','Stewart','Tom','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0652','Timoney','Nick','Loose Forward','URC014', 0);
INSERT INTO Players VALUES ('PL0653','Treadwell','Kieran','Lock','URC014', 0);
INSERT INTO Players VALUES ('PL0654','Walker','Henry','Hooker','URC014', 0);
INSERT INTO Players VALUES ('PL0655','Warwick','Andre','Prop','URC014', 0);
INSERT INTO Players VALUES ('PL0656','Wilson','Scott','Prop','URC014', 0);

INSERT INTO Players VALUES ('PL0657','Baloucoune','Robert','Wing','URC014', 0);
INSERT INTO Players VALUES ('PL0658','Carson','Ben','Centre','URC014', 0);
INSERT INTO Players VALUES ('PL0659','Cooney','John','Scrum-half','URC014', 0);
INSERT INTO Players VALUES ('PL0660','Doak','Nathan','Scrum-half','URC014', 0);
INSERT INTO Players VALUES ('PL0661','Flannery','Jake','Fly-half','URC014', 0);
INSERT INTO Players VALUES ('PL0662','Hume','James','Centre','URC014', 0);
INSERT INTO Players VALUES ('PL0663','Humphreys','James','Fly-half','URC014', 0);
INSERT INTO Players VALUES ('PL0664','Kenny','Lukas','Fullback','URC014', 0);
INSERT INTO Players VALUES ('PL0665','Kok','Werner','Wing','URC014', 0);
INSERT INTO Players VALUES ('PL0666','Lowry','Mike','Fullback','URC014', 0);
INSERT INTO Players VALUES ('PL0667','McCloskey','Stuart','Centre','URC014', 0);
INSERT INTO Players VALUES ('PL0668','McDonald','Michael','Scrum-half','URC014', 0);
INSERT INTO Players VALUES ('PL0669','McFarlane','Ben','Fullback','URC014', 0);
INSERT INTO Players VALUES ('PL0670','McKee','Conor','Scrum-half','URC014', 0);
INSERT INTO Players VALUES ('PL0671','McIlroy','Ethan','Fullback','URC014', 0);
INSERT INTO Players VALUES ('PL0672','Moore','Stewart','Centre','URC014', 0);
INSERT INTO Players VALUES ('PL0673','Morgan','Aidan','Fly-half','URC014', 0);
INSERT INTO Players VALUES ('PL0674','Moxham','Ben','Wing','URC014', 0);
INSERT INTO Players VALUES ('PL0675','Murphy','Jack','Fly-half','URC014', 0);
INSERT INTO Players VALUES ('PL0676','Postlethwaite','Jude','Centre','URC014', 0);
INSERT INTO Players VALUES ('PL0677','Sexton','Aaron','Wing','URC014', 0);
INSERT INTO Players VALUES ('PL0678','Shanahan','Dave','Scrum-half','URC014', 0);
INSERT INTO Players VALUES ('PL0679','Stockdale','Jacob','Wing','URC014', 0);
INSERT INTO Players VALUES ('PL0680','Telfer','Rory','Fullback','URC014', 0);

INSERT INTO Players VALUES ('PL0681','Brink','Cyle','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0682','Carr','Nizaam','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0683','Coetzee','Marcell','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0684','Grobbelaar','Johann','Hooker','URC015', 0);
INSERT INTO Players VALUES ('PL0685','Gumede','Mpilo','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0686','Hanekom','Cameron','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0687','Kirsten','Jannes','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0688','Klopper','Francois','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0689','Louw','Elrigh','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0690','Louw','Wilco','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0691','Ludwig','Reinhardt','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0692','Manjezi','Sintu','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0693','Matanzima','Simphiwe','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0694','Mchunu','Khutha','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0695','Mosi','Mihlali','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0696','Nortje','Ruan','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0697','Smith','Mornay','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0698','Smith','Dylan','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0699','Steenekamp','Gerhard','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0700','Tshakweni','Alulutho','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0701','Uys','Muller','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0702','Vermaak','Ruan','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0703','Wessels','Jan-Hendrik','Prop','URC015', 0);
INSERT INTO Players VALUES ('PL0704','Wiese','Cobus','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0705','Xaba','Nama','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0706','Van Heerden','JF','Lock','URC015', 0);
INSERT INTO Players VALUES ('PL0707','Van Staden','Marco','Loose Forward','URC015', 0);
INSERT INTO Players VALUES ('PL0708','Van Zyl','Joe','Hooker','URC015', 0);
INSERT INTO Players VALUES ('PL0709','Van Der Merwe','Akker','Hooker','URC015', 0);


INSERT INTO Players VALUES ('PL0710','Arendse','Kurt-Lee','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0711','Barend Smit','Chris','Centre','URC015', 0);
INSERT INTO Players VALUES ('PL0712','Burger','Zak','Scrum-half','URC015', 0);
INSERT INTO Players VALUES ('PL0713','Chamberlain','Boeta','Fly-half','URC015', 0);
INSERT INTO Players VALUES ('PL0714','Dyantyi','Aphiwe','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0715','Gans','Stedman','Centre','URC015', 0);
INSERT INTO Players VALUES ('PL0716','Goosen','Johan','Fly-half','URC015', 0);
INSERT INTO Players VALUES ('PL0717','Immelman','Henry','Fullback','URC015', 0);
INSERT INTO Players VALUES ('PL0718','Johannes','Keagan','Scrum-half','URC015', 0);
INSERT INTO Players VALUES ('PL0719','Kriel','David','Fullback','URC015', 0);
INSERT INTO Players VALUES ('PL0720','Letebele','Katlego','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0721','Moodie','Canan','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0722','Novuka','Sibongile','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0723','Papier','Embrose','Scrum-half','URC015', 0);
INSERT INTO Players VALUES ('PL0724','Petersen','Sergeal','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0725','Smit','Cornel','Centre','URC015', 0);
INSERT INTO Players VALUES ('PL0726','Vorster','Harold','Centre','URC015', 0);
INSERT INTO Players VALUES ('PL0727','Williams','Devon','Fullback','URC015', 0);
INSERT INTO Players VALUES ('PL0728','De Klerk','Sebastian','Wing','URC015', 0);
INSERT INTO Players VALUES ('PL0729','Le Roux','Willie','Fullback','URC015', 0);
INSERT INTO Players VALUES ('PL0730','Van Der Walt','Jaco','Fly-half','URC015', 0);


INSERT INTO Players VALUES ('PL0731','Andreani','Luca','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0732','Bianchi','Jacopo','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0733','Bigi','Luca','Hooker','URC016', 0);
INSERT INTO Players VALUES ('PL0734','Buonfiglio','Paolo','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0735','Canali','Matteo','Lock','URC016', 0);
INSERT INTO Players VALUES ('PL0736','Ferrari','Giacomo','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0737','Fischetti','Danilo','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0738','Hasa','Muhamed','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0739','Krumov','Leonard','Lock','URC016', 0);
INSERT INTO Players VALUES ('PL0740','Licata','Giovanni','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0741','Locatelli','Samuele','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0742','Milano','Giacomo','Lock','URC016', 0);
INSERT INTO Players VALUES ('PL0743','Neculai','Ion','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0744','Nocera','Matteo','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0745','Pitinari','Juan','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0746','Ribaldi','Giampietro','Hooker','URC016', 0);
INSERT INTO Players VALUES ('PL0747','Rizzoli','Luca','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0748','Ruffolo','Francesco','Lock','URC016', 0);
INSERT INTO Players VALUES ('PL0749','Ruggeri','Davide','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0750','Stavile Bravin','Bautista','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0751','Taddei','Samuele','Prop','URC016', 0);
INSERT INTO Players VALUES ('PL0752','Volpi','Guido','Loose Forward','URC016', 0);
INSERT INTO Players VALUES ('PL0753','Zambonin','Andrea','Lock','URC016', 0);
INSERT INTO Players VALUES ('PL0754','Di Bartolomeo','Tommaso','Hooker','URC016', 0);

INSERT INTO Players VALUES ('PL0755','Baronio Gauna','Patricio','Scrum-half','URC016', 0);
INSERT INTO Players VALUES ('PL0756','Giulio','Bertaccini','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0757','Cambriani','Ben','Wing','URC016', 0);
INSERT INTO Players VALUES ('PL0758','Dominguez','Thomas','Scrum-half','URC016', 0);
INSERT INTO Players VALUES ('PL0759','Fusco','Alessandro','Scrum-half','URC016', 0);
INSERT INTO Players VALUES ('PL0760','Garcia','Gonzalo','Scrum-half','URC016', 0);
INSERT INTO Players VALUES ('PL0761','Gesi','Simone','Wing','URC016', 0);
INSERT INTO Players VALUES ('PL0762','Gregory','Scott','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0763','Jelic','Ratko','Scrum-half','URC016', 0);
INSERT INTO Players VALUES ('PL0764','Lucchin','Enrico','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0765','Mazza','Damiano','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0766','Montemauri','Giovanni','Fly-half','URC016', 0);
INSERT INTO Players VALUES ('PL0767','Morisi','Luca','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0768','Paea','Fetuli','Centre','URC016', 0);
INSERT INTO Players VALUES ('PL0769','Pani','Lorenzo','Fullback','URC016', 0);
INSERT INTO Players VALUES ('PL0770','Prisciantelli','Geronimo','Fly-half','URC016', 0);
INSERT INTO Players VALUES ('PL0771','Trulla','Jacopo','Wing','URC016', 0);
INSERT INTO Players VALUES ('PL0772','Da Re','Giacomo','Fullback','URC016', 0);
INSERT INTO Players VALUES ('PL0773','Edogbo','Edwin','Lock','URC011', 0);





Select PlayerID, LastName, FirstName, PlayerValue, TeamName from Players
Join Teams on Teams.TeamID = Players.TeamID
Order By PlayerID

Select * from Players
Order By LastName

SELECT COUNT (PlayerID) as Cnt, TeamID from Players
Group By TeamID
order by Cnt desc


UPDATE Players
SET Positions = 'Prop'
WHERE PlayerID = 'PL0511'

UPDATE Players
SET Positions = 'Fly-half'
WHERE PlayerID = 'PL0318'

UPDATE Players
SET Positions = 'Fly-half'
WHERE PlayerID = 'PL0379'

UPDATE Players
SET Positions = 'Scrum-half'
WHERE PlayerID = 'PL0378'

UPDATE Players
SET Positions = 'Loose Forward'
WHERE PlayerID = 'PL0064'

UPDATE Players
SET Positions = 'Centre'
WHERE Positions = 'Cenre'



UPDATE Players SET PlayerValue = 5
WHERE PlayerID = 'PL0141'

Select PlayerID, LastName, FirstName, PlayerValue, TeamName from Players
Join Teams on Teams.TeamID = Players.TeamID
WHERE Players.TeamID = 'URC001'
Order By PlayerValue Desc

Select * from Players 
where Positions like '%Wing%'
order by PlayerValue Desc