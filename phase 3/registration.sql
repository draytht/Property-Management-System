-- drop schema registration;
create schema registration;
use registration;

Create TABLE reguser ( 
ID int not Null,
first_name varchar(250) NOT NULL,
  last_name varchar(250) NOT NULL, 
  email  varchar(250) NOT NULL,
  address varchar(250) NOT NULL,
  city varchar(250) NOT NULL,
  state varchar(250) NOT NULL,
  zip varchar(250) NOT NULL,
  occupation varchar(250) NOT NULL,
  birth_date varchar(250) NOT NULL,
  phone varchar(250) NOT NULL
);

-- delete from reguser;

INSERT INTO `reguser` (`ID`,`first_name`,`last_name`,`phone`,`email`,`city`,`address`,`zip`,`state`,`birth_date`,`Occupation`)
VALUES
  (1,"Knox","Barton","(926) 791-8170","eros@outlook.couk","Pasir Ris","Ap #616-7411 Metus Street","M50 5YJ","TN","1986-02-25","condimentum."),
  (2,"Baxter","Keller","1-571-314-6831","lacus@hotmail.ca","Matamata","401-6274 Convallis Av.","6538-9305","KY","1990-02-28","sapien,"),
  (3,"Anne","Fox","1-201-273-9366","duis.a@hotmail.org","Caruaru","727-483 Cursus Street","577147","CT","1973-07-16","sit"),
  (4,"Tobias","Willis","(498) 672-7842","lorem.vehicula.et@protonmail.ca","Marine Parade","395-4808 Amet Ave","7745-3446","VA","2007-05-16","ullamcorper."),
  (5,"Zahir","Mcdaniel","(404) 524-8067","aliquam.enim.nec@hotmail.org","Sint-Agatha-Berchem","P.O. Box 193, 9973 Nulla Rd.","7817","NV","1988-08-28","sit"),
  (6,"Fritz","Simon","1-879-257-8438","viverra.donec@icloud.ca","Tromsø","3615 At, St.","9636","CA","2012-06-16","Praesent"),
  (7,"Brennan","Chaney","(464) 778-1023","nunc.lectus@yahoo.ca","Muzaffarpur","Ap #211-810 Ante Street","22286","MS","1985-08-15","condimentum."),
  (8,"Sierra","Glass","(214) 287-0196","aenean@protonmail.com","Gunsan","Ap #690-1213 In St.","34177","HI","1997-02-5","ac"),
  (9,"Nissim","Burt","(618) 684-6808","dignissim@protonmail.org","Andong","755-8829 Hendrerit Ave","0200","AL","1987-04-28","eget"),
  (10,"Kevin","Morrison","(472) 283-6839","sit@icloud.ca","Chalon-sur-Saône","665 Et St.","57155","VT","1976-05-1","elit.");
INSERT INTO `reguser` (`ID`,`first_name`,`last_name`,`phone`,`email`,`city`,`address`,`zip`,`state`,`birth_date`,`Occupation`)
VALUES
  (11,"Abel","Atkinson","1-982-943-4863","cras.interdum@yahoo.couk","Sissa","Ap #406-6694 Eu Rd.","DP5F 6BH","ME","1994-01-14","euismod"),
  (12,"Moses","Vazquez","1-786-788-4784","curabitur.sed@protonmail.net","Gjoa Haven","P.O. Box 256, 9071 Facilisis Street","4957","IN","2009-09-4","velit."),
  (13,"Asher","Acevedo","(210) 513-6148","sem@hotmail.edu","Radebeul","656 Dui Rd.","84-55","KY","1973-03-11","consectetuer"),
  (14,"Rigel","Saunders","(598) 224-1473","amet@outlook.org","Gwadar","Ap #472-4306 Erat Road","47963-12974","AZ","1987-06-7","at,"),
  (15,"Xyla","Mitchell","(959) 612-4965","euismod.in@aol.net","Secunda","Ap #707-6091 Mollis Rd.","12768","ID","1977-03-9","tincidunt"),
  (16,"Jolie","Olsen","1-971-247-1167","sed.eu.eros@icloud.net","Qinghai","5187 Vel Av.","34363","OR","2022-04-17","ante"),
  (17,"Jael","Leon","(308) 365-6186","purus.accumsan@protonmail.edu","Darıca","496-7253 Lectus Street","8201 VX","IN","1982-02-26","eget"),
  (18,"Vincent","Myers","1-796-496-9646","at.risus.nunc@protonmail.com","Delhi","4724 Eu Road","7960","VT","1989-06-22","consequat"),
  (19,"Darrel","Byrd","(855) 526-6828","diam.eu@aol.org","Nijkerk","693-7851 Justo Av.","38-18","AL","1991-04-3","venenatis"),
  (20,"Murphy","Clay","1-343-261-4816","et@aol.org","Melilla","Ap #997-9982 Non, Street","483099","OK","2007-11-3","Ut");
INSERT INTO `reguser` (`ID`,`first_name`,`last_name`,`phone`,`email`,`city`,`address`,`zip`,`state`,`birth_date`,`Occupation`)
VALUES
  (21,"Kareem","Santos","(188) 925-3718","ante.dictum@hotmail.net","Vezirköprü","625-8980 Pharetra Rd.","64053","CO","2005-06-14","facilisis"),
  (22,"Tobias","Barry","(214) 313-1157","vitae@yahoo.edu","Noisy-le-Grand","Ap #484-2360 Praesent Road","87264","NV","1989-07-21","auctor"),
  (23,"Brenden","Pacheco","1-245-577-0857","nunc.mauris@outlook.edu","San Vicente de Cañete","Ap #118-6810 Arcu. Avenue","2959 NS","KY","1996-10-19","Proin"),
  (24,"Tucker","Suarez","(776) 322-4154","risus.odio.auctor@hotmail.org","Mulhouse","Ap #468-6212 Arcu. Ave","647985","WI","2001-07-15","Nullam"),
  (25,"Savannah","Mcdaniel","1-267-393-3656","quisque.tincidunt@yahoo.couk","Koszalin","Ap #956-1421 Nec Ave","3797","AZ","1980-10-27","velit."),
  (26,"Phyllis","Mcdowell","1-864-555-3351","ipsum.ac.mi@hotmail.couk","Kongsvinger","590-680 Lectus Rd.","1389","GA","1973-04-13","Donec"),
  (27,"Ashely","Cameron","(434) 377-0482","tincidunt.neque@hotmail.com","Rustenburg","Ap #166-8969 Donec Rd.","655541","GA","1993-12-21","turpis"),
  (28,"Ingrid","Meadows","1-263-607-6894","tempor.erat@yahoo.net","Kırıkhan","Ap #118-1814 Egestas. Av.","527143","MD","1983-03-24","Phasellus"),
  (29,"Austin","Berg","1-453-667-1743","amet.ultricies@google.edu","Quảng Ngãi","4997 Ornare Avenue","225235","NE","1971-07-19","Aliquam"),
  (30,"Yoko","Mullins","(103) 377-3292","est.arcu@outlook.org","Bama","9143 Tortor Rd.","3496-1725","ME","1977-09-9","lacinia");
INSERT INTO `reguser` (`ID`,`first_name`,`last_name`,`phone`,`email`,`city`,`address`,`zip`,`state`,`birth_date`,`Occupation`)
VALUES
  (31,"Signe","Melendez","1-314-342-6289","nisi.aenean.eget@protonmail.org","Helensburgh","283-5411 Phasellus Street","385478","WA","1981-06-10","at"),
  (32,"Lacey","Watson","1-810-755-1572","aliquam.adipiscing@hotmail.org","Pacasmayo","5820 Auctor St.","4465","CA","2008-01-2","consequat"),
  (33,"Ryder","Douglas","1-962-745-8390","risus.donec@icloud.ca","Völklingen","1695 Elit, Street","19134","MD","1979-12-20","nec"),
  (34,"Kennan","Osborne","1-268-582-2555","ac.turpis@aol.couk","Suwon","919-9636 Vel St.","735164","OH","2005-08-21","diam"),
  (35,"Oren","Castaneda","(828) 871-8136","adipiscing@yahoo.org","Guápiles","541-1434 Quis Ave","7890","ME","2013-08-6","ultricies"),
  (36,"Elvis","Santos","1-767-967-2915","consectetuer@google.net","Katowice","P.O. Box 720, 6935 Nisi St.","891474","AL","2012-05-1","auctor."),
  (37,"Dai","Conway","1-855-572-8861","magna.a.tortor@protonmail.org","Baubau","Ap #632-6915 Tellus, Rd.","55718","AZ","1975-03-28","vitae"),
  (38,"Sage","Tillman","(647) 507-6869","augue.eu@protonmail.net","Ang Mo Kio","505-2583 Metus. St.","35877","FL","1983-11-21","Suspendisse"),
  (39,"Britanney","O'Neill","1-486-880-8021","elit@google.couk","Sumy","Ap #909-4776 Posuere Avenue","07565","KS","1990-01-2","eros"),
  (40,"Devin","Glenn","(441) 588-2487","metus@icloud.org","Karachi","Ap #266-4737 Scelerisque, Av.","I0T 7T5","PA","1978-07-4","lobortis");
INSERT INTO `reguser` (`ID`,`first_name`,`last_name`,`phone`,`email`,`city`,`address`,`zip`,`state`,`birth_date`,`Occupation`)
VALUES
  (41,"Dale","Snyder","(687) 491-1888","proin@google.org","Wonju","600-969 Consequat Street","12342","MT","2000-05-27","eget"),
  (42,"Tanya","Tucker","(461) 366-9217","urna.nec.luctus@outlook.net","Bạc Liêu","405-598 Vitae Rd.","77282","GA","1972-09-13","dui."),
  (43,"Erich","Mcbride","1-335-818-3838","varius@google.edu","Jelenia Góra","Ap #450-718 Magna, Street","73621-34243","ME","1995-09-30","pede"),
  (44,"Knox","Hale","(425) 724-3753","suspendisse.eleifend@yahoo.com","Montelíbano","196-3944 Felis Ave","65854-498","TN","2005-10-19","eu,"),
  (45,"Moses","Forbes","1-852-227-1448","dis.parturient.montes@hotmail.couk","Hoofddorp","9448 Non, Rd.","2262","KY","1978-01-12","elementum"),
  (46,"Caldwell","Yates","1-238-835-1434","aliquam.eu@protonmail.edu","Huissen","Ap #860-5236 At Ave","5683-8694","WY","1986-11-21","semper"),
  (47,"Sierra","Fulton","1-215-672-5652","turpis@aol.ca","Hamburg","P.O. Box 792, 6449 Penatibus Rd.","302355","PA","2019-06-13","nunc"),
  (48,"Dacey","Rose","(330) 395-7285","augue@protonmail.com","Sagay","P.O. Box 582, 510 Vulputate St.","74606","VA","2004-01-23","Nullam"),
  (49,"Kuame","Wells","(516) 356-9345","vitae.aliquam@google.net","Seogwipo","8106 Dapibus Rd.","612375","HI","1985-06-27","Donec"),
  (50,"Aspen","Tran","(427) 434-4667","tellus.lorem.eu@outlook.org","Bokaro Steel City","308 Vulputate, Av.","214860","AZ","1980-11-9","bibendum");
