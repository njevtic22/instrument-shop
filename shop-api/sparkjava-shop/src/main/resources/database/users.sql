-- Passwords are hashed using BCrypt algorithm https://bcrypt-generator.com/
-- Passwords for all users are:
--
-- Scripts combined generate database for sparkjava-shop
-- It generates:
--	- 22030 images
--	- 30 users
--		- 10 managers
--		- 10 salesmen
--		- 10 customers
--		- with 10 instruments in cart
--	- 12 instrument types
--	- 1200 available instruments
--		- 100 per type
--		- 10 images for 1 available instrument
--	- 1000 bought instruments
--		- 100 per customer
--		- 10 images for 1 bought instrument
--	- 100 receipts
--		- 10 per customer
--	- 1000 receipt items
--		- 10 per receipt
--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------- Inserting users --------------------------------------------------------------------------------------------
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (1, 'Shelley', 'Sanford', 'manager1@gmail.com', 'manager1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12001);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (2, 'Millard', 'Kemmer', 'manager2@gmail.com', 'manager2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12002);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (3, 'Carroll', 'Stoltenberg', 'manager3@gmail.com', 'manager3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12003);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (4, 'Dong', 'Orn', 'manager4@gmail.com', 'manager4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12004);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (5, 'Kamilah', 'Haley', 'manager5@gmail.com', 'manager5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12005);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (6, 'Sadie', 'Feeney', 'manager6@gmail.com', 'manager6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12006);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (7, 'Burton', 'O''Keefe', 'manager7@gmail.com', 'manager7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12007);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (8, 'Owen', 'Hansen', 'manager8@gmail.com', 'manager8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12008);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (9, 'Veronique', 'Hand', 'manager9@gmail.com', 'manager9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12009);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (10, 'Gil', 'Pollich', 'manager10@gmail.com', 'manager10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'MANAGER', 12010);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (11, 'Lavern', 'Zemlak', 'salesman1@gmail.com', 'salesman1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12011);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (12, 'Rochell', 'Schuppe', 'salesman2@gmail.com', 'salesman2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12012);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (13, 'Dalene', 'O''Connell', 'salesman3@gmail.com', 'salesman3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12013);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (14, 'Drew', 'Reynolds', 'salesman4@gmail.com', 'salesman4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12014);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (15, 'Lucas', 'Rodriguez', 'salesman5@gmail.com', 'salesman5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12015);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (16, 'Erik', 'Halvorson', 'salesman6@gmail.com', 'salesman6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12016);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (17, 'Eugenio', 'Buckridge', 'salesman7@gmail.com', 'salesman7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12017);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (18, 'Fernande', 'Mante', 'salesman8@gmail.com', 'salesman8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12018);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (19, 'Geraldine', 'Walter', 'salesman9@gmail.com', 'salesman9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12019);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (20, 'Everette', 'Armstrong', 'salesman10@gmail.com', 'salesman10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'SALESMAN', 12020);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (21, 'Jadwiga', 'Torp', 'customer1@gmail.com', 'customer1', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12021);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (22, 'Freddy', 'Becker', 'customer2@gmail.com', 'customer2', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12022);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (23, 'Landon', 'Kreiger', 'customer3@gmail.com', 'customer3', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12023);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (24, 'Antonia', 'Bosco', 'customer4@gmail.com', 'customer4', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12024);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (25, 'Billie', 'Hegmann', 'customer5@gmail.com', 'customer5', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12025);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (26, 'Dan', 'Bednar', 'customer6@gmail.com', 'customer6', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12026);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (27, 'Teddy', 'Wiza', 'customer7@gmail.com', 'customer7', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12027);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (28, 'Berniece', 'Kunde', 'customer8@gmail.com', 'customer8', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12028);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (29, 'Nicolas', 'Dooley', 'customer9@gmail.com', 'customer9', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12029);
insert into users (id, name, surname, email, username, password, archived, role, image_id) values (30, 'Garland', 'Hayes', 'customer10@gmail.com', 'customer10', '$2a$10$JCYrt8QGHg4suBXWiRgjKu93h5DCq3yFDXMDsTY/Itkgeu3h3pCE6', false, 'CUSTOMER', 12030);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------- Altering user_id_seq -----------------------------------------------------------------------------------------
alter sequence user_id_seq restart with 31;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

