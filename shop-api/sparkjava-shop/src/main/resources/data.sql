-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/
-- Passwords for all users are:
--
-- Script generates database for sparkjava-shop
-- It generates:
--	- 30 images
--	- 30 users
--		- 10 managers
--		- 10 salesmen
--		- 10 customers
--	- 12 instrument types
--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------- Inserting images -------------------------------------------------------------------------------------------
insert into images (id, url, archived) values (1, 'https://res.cloudinary.com/example-app/image/upload/v1715279722/musical-instruments/m9crs9g9svdzupvqaird.jpg', false);
insert into images (id, url, archived) values (2, 'https://res.cloudinary.com/example-app/image/upload/v1715279724/musical-instruments/ibosz56v3s8mlwaweqgi.jpg', false);
insert into images (id, url, archived) values (3, 'https://res.cloudinary.com/example-app/image/upload/v1715279726/musical-instruments/nzqz49axvffr7qh6gzzy.jpg', false);
insert into images (id, url, archived) values (4, 'https://res.cloudinary.com/example-app/image/upload/v1715279727/musical-instruments/gu8dvkruj7kycgtlxu1a.jpg', false);
insert into images (id, url, archived) values (5, 'https://res.cloudinary.com/example-app/image/upload/v1715279728/musical-instruments/grtv0n60j08y5dxk3jko.jpg', false);
insert into images (id, url, archived) values (6, 'https://res.cloudinary.com/example-app/image/upload/v1715279730/musical-instruments/bhjekusgooizu5gkbrov.jpg', false);
insert into images (id, url, archived) values (7, 'https://res.cloudinary.com/example-app/image/upload/v1715279732/musical-instruments/lbqc5yhxdrluxholgidu.jpg', false);
insert into images (id, url, archived) values (8, 'https://res.cloudinary.com/example-app/image/upload/v1715279733/musical-instruments/lnemzlzqzydin0eb9yvl.jpg', false);
insert into images (id, url, archived) values (9, 'https://res.cloudinary.com/example-app/image/upload/v1715279735/musical-instruments/kchdzcpd1lzxkujo7jrp.jpg', false);
insert into images (id, url, archived) values (10, 'https://res.cloudinary.com/example-app/image/upload/v1715279736/musical-instruments/kj9ccrn2gu5pfr88xbdn.jpg', false);
insert into images (id, url, archived) values (11, 'https://res.cloudinary.com/example-app/image/upload/v1715279737/musical-instruments/fgpeaicrt1zfkeit7phy.jpg', false);
insert into images (id, url, archived) values (12, 'https://res.cloudinary.com/example-app/image/upload/v1715279739/musical-instruments/k8ftqne46zybdxlpmwbl.jpg', false);
insert into images (id, url, archived) values (13, 'https://res.cloudinary.com/example-app/image/upload/v1715279740/musical-instruments/lz677wikw5mevqkvekq1.jpg', false);
insert into images (id, url, archived) values (14, 'https://res.cloudinary.com/example-app/image/upload/v1715279741/musical-instruments/d2vlv3htznxyzlbt3fcf.jpg', false);
insert into images (id, url, archived) values (15, 'https://res.cloudinary.com/example-app/image/upload/v1715279743/musical-instruments/jjhdjquycet1ffbnq70x.jpg', false);
insert into images (id, url, archived) values (16, 'https://res.cloudinary.com/example-app/image/upload/v1715279745/musical-instruments/t3ukmiqsfimqfn5s3mql.jpg', false);
insert into images (id, url, archived) values (17, 'https://res.cloudinary.com/example-app/image/upload/v1715279747/musical-instruments/tzdzkjluew1hzbexig6i.jpg', false);
insert into images (id, url, archived) values (18, 'https://res.cloudinary.com/example-app/image/upload/v1715279749/musical-instruments/dtmpolzusppovad9j4ug.jpg', false);
insert into images (id, url, archived) values (19, 'https://res.cloudinary.com/example-app/image/upload/v1715279751/musical-instruments/huzf1rfynggh6dhodgvd.jpg', false);
insert into images (id, url, archived) values (20, 'https://res.cloudinary.com/example-app/image/upload/v1715279753/musical-instruments/kobpctob4q8zzmpcwvw9.jpg', false);
insert into images (id, url, archived) values (21, 'https://res.cloudinary.com/example-app/image/upload/v1715279754/musical-instruments/puwcg9g3xyhqq3fzxwm2.jpg', false);
insert into images (id, url, archived) values (22, 'https://res.cloudinary.com/example-app/image/upload/v1715279756/musical-instruments/ou5tbqifom3ptr8ksy6y.jpg', false);
insert into images (id, url, archived) values (23, 'https://res.cloudinary.com/example-app/image/upload/v1715279758/musical-instruments/azj5s1jxonlkwclwdifn.jpg', false);
insert into images (id, url, archived) values (24, 'https://res.cloudinary.com/example-app/image/upload/v1715279760/musical-instruments/oanvl51iutliztxnaudk.jpg', false);
insert into images (id, url, archived) values (25, 'https://res.cloudinary.com/example-app/image/upload/v1715279762/musical-instruments/czihglsrafewtdxqzfdw.jpg', false);
insert into images (id, url, archived) values (26, 'https://res.cloudinary.com/example-app/image/upload/v1715279764/musical-instruments/egkjavozmw8qzmucvdu6.jpg', false);
insert into images (id, url, archived) values (27, 'https://res.cloudinary.com/example-app/image/upload/v1715279766/musical-instruments/qyejnz8rhkbbncczcyo8.jpg', false);
insert into images (id, url, archived) values (28, 'https://res.cloudinary.com/example-app/image/upload/v1715279768/musical-instruments/rlbvlweriin7siif0pra.jpg', false);
insert into images (id, url, archived) values (29, 'https://res.cloudinary.com/example-app/image/upload/v1715279771/musical-instruments/cz2ze3yeokxs3oiecyj4.jpg', false);
insert into images (id, url, archived) values (30, 'https://res.cloudinary.com/example-app/image/upload/v1715279772/musical-instruments/dcggvbcatfmonoudqr4w.jpg', false);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------- Altering image_id_seq -----------------------------------------------------------------------------------------
alter sequence image_id_seq restart with 31;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------- Inserting instrument types --------------------------------------------------------------------------------------
insert into instrument_types (id, name, archived) values (1, 'Plucked', false);
insert into instrument_types (id, name, archived) values (2, 'Bowed', false);
insert into instrument_types (id, name, archived) values (3, 'Woodwinds', false);
insert into instrument_types (id, name, archived) values (4, 'Brass', false);
insert into instrument_types (id, name, archived) values (5, 'Percussion', false);
insert into instrument_types (id, name, archived) values (6, 'Electronic', false);
insert into instrument_types (id, name, archived) values (7, 'Keyboard', false);
insert into instrument_types (id, name, archived) values (8, 'Idiophones', false);
insert into instrument_types (id, name, archived) values (9, 'Membranophones', false);
insert into instrument_types (id, name, archived) values (10, 'Chordophones', false);
insert into instrument_types (id, name, archived) values (11, 'Aerophones', false);
insert into instrument_types (id, name, archived) values (12, 'Electrophones', false);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------- Altering instrument_type_id_seq ------------------------------------------------------------------------------------
alter sequence instrument_type_id_seq restart with 13;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------- Inserting users --------------------------------------------------------------------------------------------
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (1, 'Thad', 'Zulauf', 'manager1@gmail.com', 'manager1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 1);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (2, 'Emory', 'Abernathy', 'manager2@gmail.com', 'manager2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 2);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (3, 'Lanie', 'Larson', 'manager3@gmail.com', 'manager3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 3);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (4, 'Juli', 'Jenkins', 'manager4@gmail.com', 'manager4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 4);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (5, 'Nicky', 'Hansen', 'manager5@gmail.com', 'manager5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 5);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (6, 'Geraldine', 'Krajcik', 'manager6@gmail.com', 'manager6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 6);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (7, 'Daniel', 'Marvin', 'manager7@gmail.com', 'manager7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 7);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (8, 'Jonathan', 'Mayert', 'manager8@gmail.com', 'manager8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 8);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (9, 'Eda', 'Howe', 'manager9@gmail.com', 'manager9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 9);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (10, 'Federico', 'Wiza', 'manager10@gmail.com', 'manager10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 10);

insert into users (id, name, surname, email, username, password, archived, role, image_id) values (11, 'Masako', 'Dibbert', 'salesman1@gmail.com', 'salesman1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 11);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (12, 'Verlene', 'Nader', 'salesman2@gmail.com', 'salesman2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (13, 'Melvin', 'Greenfelder', 'salesman3@gmail.com', 'salesman3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 13);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (14, 'Ramonita', 'Mosciski', 'salesman4@gmail.com', 'salesman4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 14);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (15, 'Rubie', 'Kemmer', 'salesman5@gmail.com', 'salesman5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 15);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (16, 'Reva', 'Feest', 'salesman6@gmail.com', 'salesman6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 16);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (17, 'Joya', 'Berge', 'salesman7@gmail.com', 'salesman7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 17);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (18, 'Ambrose', 'Grant', 'salesman8@gmail.com', 'salesman8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 18);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (19, 'Felipe', 'Zemlak', 'salesman9@gmail.com', 'salesman9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 19);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (20, 'Robbie', 'Connelly', 'salesman10@gmail.com', 'salesman10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 20);

insert into users (id, name, surname, email, username, password, archived, role, image_id) values (21, 'Rozella', 'Gleichner', 'customer1@gmail.com', 'customer1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 21);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (22, 'Patrica', 'Ferry', 'customer2@gmail.com', 'customer2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 22);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (23, 'Davida', 'Bartell', 'customer3@gmail.com', 'customer3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 23);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (24, 'Salvador', 'Hettinger', 'customer4@gmail.com', 'customer4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 24);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (25, 'Porter', 'Klocko', 'customer5@gmail.com', 'customer5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 25);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (26, 'Moshe', 'Ryan', 'customer6@gmail.com', 'customer6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 26);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (27, 'Winfred', 'Kuhlman', 'customer7@gmail.com', 'customer7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 27);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (28, 'Hans', 'O''Reilly', 'customer8@gmail.com', 'customer8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 28);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (29, 'Barb', 'Terry', 'customer9@gmail.com', 'customer9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 29);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (30, 'Armando', 'Wolf', 'customer10@gmail.com', 'customer10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 30);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------- Altering user_id_seq -----------------------------------------------------------------------------------------
alter sequence user_id_seq restart with 31;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

