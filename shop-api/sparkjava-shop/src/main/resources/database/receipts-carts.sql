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
------------------------------------------------------------------------------------------ Inserting receipts ------------------------------------------------------------------------------------------
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'qgQB1', 5267.99, 15000.0, 9732.01, '2024-01-24T05:06:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'PHz32', 5994.99, 15000.0, 9005.01, '2024-01-26T07:22:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, 'X2cl3', 3370.99, 15000.0, 11629.01, '2024-04-17T05:27:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, '7E8p4', 4672.99, 15000.0, 10327.01, '2024-01-20T07:26:55');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'd6385', 3415.99, 15000.0, 11584.01, '2024-02-15T07:05:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, '9H8t6', 5383.99, 15000.0, 9616.01, '2024-04-16T07:53:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'CvP27', 5030.99, 15000.0, 9969.01, '2024-04-20T07:48:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'Vdza8', 4679.99, 15000.0, 10320.01, '2024-02-22T08:09:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, 'RjTa9', 7220.99, 15000.0, 7779.01, '2024-04-08T07:18:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, '2nNO10', 6179.99, 15000.0, 8820.01, '2024-02-06T07:19:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, 'KjBL11', 5453.99, 15000.0, 9546.01, '2024-04-14T08:19:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'CX0S12', 4256.99, 15000.0, 10743.01, '2024-04-24T05:31:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'Y0BO13', 5785.99, 15000.0, 9214.01, '2024-02-05T07:50:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'wCvX14', 4935.99, 15000.0, 10064.01, '2024-04-25T07:44:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'XhSb15', 5997.99, 15000.0, 9002.01, '2024-03-11T07:37:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'R2cQ16', 4910.99, 15000.0, 10089.01, '2024-02-16T08:39:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'Ej0d17', 7382.99, 15000.0, 7617.01, '2024-02-12T07:02:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'eSJ518', 6088.99, 15000.0, 8911.01, '2024-03-22T07:07:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'drle19', 5293.99, 15000.0, 9706.01, '2024-02-17T05:50:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'kmNL20', 4876.99, 15000.0, 10123.01, '2024-03-01T07:18:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'jCI621', 4782.99, 15000.0, 10217.01, '2024-03-04T07:41:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'WJxf22', 6321.99, 15000.0, 8678.01, '2024-04-18T07:53:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'dOTD23', 5238.99, 15000.0, 9761.01, '2024-04-07T07:11:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'KLpq24', 7818.99, 15000.0, 7181.01, '2024-02-15T05:14:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'Atkw25', 5262.99, 15000.0, 9737.01, '2024-04-01T05:44:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, 'ZIxZ26', 5629.99, 15000.0, 9370.01, '2024-04-17T07:03:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, 'hJ6w27', 6027.99, 15000.0, 8972.01, '2024-04-03T05:08:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'lqI828', 4978.99, 15000.0, 10021.01, '2024-04-23T07:08:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'AN8Q29', 5589.99, 15000.0, 9410.01, '2024-02-20T07:05:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'Mnbi30', 5987.99, 15000.0, 9012.01, '2024-01-16T07:28:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'ihPt31', 5318.99, 15000.0, 9681.01, '2024-02-17T08:33:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'bCwa32', 5631.99, 15000.0, 9368.01, '2024-01-05T08:38:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'vdGu33', 6012.99, 15000.0, 8987.01, '2024-02-23T08:54:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, 'o9oJ34', 4977.99, 15000.0, 10022.01, '2024-03-07T07:15:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, '8Fi835', 4977.99, 15000.0, 10022.01, '2024-04-25T07:31:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'xuT736', 5675.99, 15000.0, 9324.01, '2024-03-08T07:37:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, 'OVI637', 4876.99, 15000.0, 10123.01, '2024-03-05T07:12:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'J6Xy38', 5835.99, 15000.0, 9164.01, '2024-02-02T07:07:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'W6hl39', 6033.99, 15000.0, 8966.01, '2024-04-08T07:29:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'Gpb640', 4733.99, 15000.0, 10266.01, '2024-04-23T07:40:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, 'eL6s41', 4422.99, 15000.0, 10577.01, '2024-04-23T08:48:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'pgx342', 4737.99, 15000.0, 10262.01, '2024-02-27T07:25:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'M4t143', 4914.99, 15000.0, 10085.01, '2024-03-11T07:07:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'Goiy44', 3804.99, 15000.0, 11195.01, '2024-02-14T08:35:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, 'lRAj45', 6762.99, 15000.0, 8237.01, '2024-04-16T07:46:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'KjMv46', 6120.99, 15000.0, 8879.01, '2024-04-20T07:42:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, 'Hojk47', 5487.99, 15000.0, 9512.01, '2024-02-14T07:13:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'EPZl48', 5505.99, 15000.0, 9494.01, '2024-04-25T07:41:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, '5UOb49', 6931.99, 15000.0, 8068.01, '2024-04-20T07:51:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'Hpuh50', 4129.99, 15000.0, 10870.01, '2024-04-27T07:02:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, 'noJ651', 6196.99, 15000.0, 8803.01, '2024-01-13T05:40:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, '6PeZ52', 5406.99, 15000.0, 9593.01, '2024-02-26T05:44:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, 'uSCW53', 5501.99, 15000.0, 9498.01, '2024-03-15T05:41:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, '9n1G54', 5751.99, 15000.0, 9248.01, '2024-02-04T07:48:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'H0gZ55', 7165.99, 15000.0, 7834.01, '2024-04-09T07:44:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'eee256', 6707.99, 15000.0, 8292.01, '2024-03-20T07:21:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'mU9957', 6539.99, 15000.0, 8460.01, '2024-04-14T07:39:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'QYji58', 5569.99, 15000.0, 9430.01, '2024-04-09T07:25:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'Pufd59', 5014.99, 15000.0, 9985.01, '2024-04-12T07:11:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'M94160', 4437.99, 15000.0, 10562.01, '2024-02-02T07:35:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, '1okP61', 5723.99, 15000.0, 9276.01, '2024-02-23T08:39:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'yRkg62', 7131.99, 15000.0, 7868.01, '2024-03-26T07:12:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, 'Woxx63', 6174.99, 15000.0, 8825.01, '2024-04-16T07:26:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, 'toma64', 5442.99, 15000.0, 9557.01, '2024-04-02T07:29:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'iGGN65', 5043.99, 15000.0, 9956.01, '2024-03-24T07:51:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'DYH266', 6571.99, 15000.0, 8428.01, '2024-02-10T07:07:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'CImI67', 6414.99, 15000.0, 8585.01, '2024-03-21T08:32:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, 'ZSwc68', 6969.99, 15000.0, 8030.01, '2024-02-22T07:52:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'D02b69', 4918.99, 15000.0, 10081.01, '2024-04-01T07:23:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, 'gYti70', 6003.99, 15000.0, 8996.01, '2024-04-27T07:26:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, 'gDKU71', 5988.99, 15000.0, 9011.01, '2024-01-03T05:11:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'z1kK72', 5076.99, 15000.0, 9923.01, '2024-03-03T07:12:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'ddCS73', 4991.99, 15000.0, 10008.01, '2024-02-07T05:17:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'XVp174', 5651.99, 15000.0, 9348.01, '2024-03-13T07:23:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'g0HL75', 4892.99, 15000.0, 10107.01, '2024-04-22T07:39:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, '4UO976', 5080.99, 15000.0, 9919.01, '2024-04-02T07:30:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, 'KTMx77', 4999.99, 15000.0, 10000.01, '2024-04-25T07:48:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'gga178', 5326.99, 15000.0, 9673.01, '2024-04-14T07:11:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, 'Vkpu79', 3712.99, 15000.0, 11287.01, '2024-01-04T07:53:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, 'uv1N80', 5775.99, 15000.0, 9224.01, '2024-02-14T07:08:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, 'SMdE81', 4952.99, 15000.0, 10047.01, '2024-04-22T07:40:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, 'PeRA82', 6273.99, 15000.0, 8726.01, '2024-04-05T05:16:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, '1FQ883', 5136.99, 15000.0, 9863.01, '2024-03-05T07:46:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, '5YR884', 4916.99, 15000.0, 10083.01, '2024-04-22T07:24:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'MOma85', 3843.99, 15000.0, 11156.01, '2024-04-03T07:04:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'NCSm86', 6570.99, 15000.0, 8429.01, '2024-02-10T08:24:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'PQdG87', 6424.99, 15000.0, 8575.01, '2024-04-25T07:23:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'BTP288', 4450.99, 15000.0, 10549.01, '2024-02-13T07:17:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, '3NvU89', 3947.99, 15000.0, 11052.01, '2024-02-24T05:34:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'IY3J90', 5116.99, 15000.0, 9883.01, '2024-04-08T08:31:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'Rd7m91', 5120.99, 15000.0, 9879.01, '2024-01-22T07:36:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'rmfb92', 6028.99, 15000.0, 8971.01, '2024-02-16T07:33:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, '3aQi93', 5006.99, 15000.0, 9993.01, '2024-02-12T07:04:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'juEm94', 5472.99, 15000.0, 9527.01, '2024-02-14T05:50:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'm8Hs95', 5657.99, 15000.0, 9342.01, '2024-01-16T05:09:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'zrmW96', 5421.99, 15000.0, 9578.01, '2024-04-10T07:13:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'yDZi97', 5393.99, 15000.0, 9606.01, '2024-04-13T07:14:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, 'rvrS98', 5882.99, 15000.0, 9117.01, '2024-04-13T05:07:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, '2zAW99', 6216.99, 15000.0, 8783.01, '2024-04-12T07:09:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'qwIf100', 5669.99, 15000.0, 9330.01, '2024-03-09T05:26:23');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 4, 1, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 1, 1, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 8, 1, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 2, 1, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 11, 1, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 10, 1, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 6, 1, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 5, 1, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 4, 1, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 10, 1, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 5, 2, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 4, 2, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 5, 2, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 4, 2, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 7, 2, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 8, 2, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 6, 2, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 6, 2, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 1, 2, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 2, 2, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 5, 3, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 6, 3, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 9, 3, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 6, 3, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 3, 3, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 7, 3, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 9, 3, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 6, 3, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 3, 3, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 7, 3, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 8, 4, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 5, 4, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 9, 4, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 9, 4, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 5, 4, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 12, 4, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 10, 4, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 11, 4, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 2, 4, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 2, 4, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 3, 5, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 6, 5, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 5, 5, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 3, 5, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 2, 5, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 3, 5, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 7, 5, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 3, 5, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 7, 5, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 6, 5, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 2, 6, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 5, 6, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 11, 6, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 11, 6, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 10, 6, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 10, 6, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 5, 6, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 5, 6, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 10, 6, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 1, 6, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 7, 7, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 6, 7, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 8, 7, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 7, 7, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 5, 7, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 3, 7, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 10, 7, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 3, 7, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 5, 7, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 4, 7, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 11, 8, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 1, 8, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 5, 8, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 3, 8, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 1, 8, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 9, 8, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 7, 8, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 11, 8, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 2, 8, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 5, 8, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 11, 9, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 11, 9, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 7, 9, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 4, 9, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 12, 9, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 8, 9, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 11, 9, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 10, 9, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 6, 9, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 12, 9, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 5, 10, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 8, 10, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 8, 10, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 7, 10, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 12, 10, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 7, 10, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 11, 10, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 10, 10, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 10, 10, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 8, 10, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 4, 11, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 4, 11, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 2, 11, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 5, 11, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 10, 11, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 7, 11, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 11, 11, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 5, 11, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 10, 11, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 11, 11, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 11, 12, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 5, 12, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 7, 12, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 1, 12, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 9, 12, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 7, 12, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 11, 12, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 10, 12, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 2, 12, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 7, 12, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 5, 13, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 2, 13, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 2, 13, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 3, 13, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 1, 13, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 7, 13, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 7, 13, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 2, 13, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 5, 13, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 2, 13, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 9, 14, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 7, 14, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 4, 14, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 9, 14, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 6, 14, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 10, 14, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 7, 14, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 9, 14, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 11, 14, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 12, 14, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 11, 15, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 9, 15, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 11, 15, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 7, 15, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 9, 15, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 5, 15, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 10, 15, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 10, 15, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 3, 15, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 8, 15, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 4, 16, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 8, 16, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 9, 16, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 12, 16, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 4, 16, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 10, 16, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 5, 16, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 9, 16, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 5, 16, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 12, 16, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 8, 17, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 8, 17, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 1, 17, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 11, 17, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 5, 17, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 3, 17, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 1, 17, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 1, 17, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 1, 17, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 6, 17, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 8, 18, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 10, 18, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 4, 18, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 6, 18, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 2, 18, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 10, 18, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 7, 18, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 12, 18, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 5, 18, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 1, 18, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 12, 19, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 4, 19, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 4, 19, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 11, 19, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 7, 19, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 12, 19, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 4, 19, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 4, 19, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 10, 19, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 2, 19, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 4, 20, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 3, 20, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 4, 20, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 2, 20, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 4, 20, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 9, 20, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 9, 20, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 7, 20, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 11, 20, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 11, 20, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 2, 21, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 11, 21, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 12, 21, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 8, 21, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 4, 21, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 6, 21, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 3, 21, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 3, 21, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 6, 21, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 6, 21, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 5, 22, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 3, 22, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 12, 22, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 6, 22, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 6, 22, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 5, 22, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 10, 22, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 5, 22, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 9, 22, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 7, 22, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 6, 23, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 10, 23, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 7, 23, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 5, 23, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 9, 23, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 8, 23, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 2, 23, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 12, 23, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 11, 23, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 5, 23, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 5, 24, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 2, 24, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 4, 24, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 11, 24, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 10, 24, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 4, 24, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 9, 24, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 6, 24, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 10, 24, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 4, 24, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 6, 25, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 12, 25, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 10, 25, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 8, 25, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 4, 25, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 5, 25, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 8, 25, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 8, 25, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 8, 25, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 11, 25, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 11, 26, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 8, 26, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 9, 26, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 9, 26, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 11, 26, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 7, 26, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 5, 26, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 12, 26, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 3, 26, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 6, 26, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 11, 27, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 4, 27, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 7, 27, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 9, 27, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 9, 27, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 7, 27, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 4, 27, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 8, 27, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 2, 27, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 10, 27, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 10, 28, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 12, 28, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 11, 28, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 8, 28, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 6, 28, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 12, 28, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 3, 28, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 1, 28, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 8, 28, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 4, 28, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 8, 29, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 12, 29, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 6, 29, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 5, 29, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 9, 29, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 10, 29, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 8, 29, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 4, 29, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 8, 29, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 12, 29, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 4, 30, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 8, 30, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 8, 30, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 4, 30, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 6, 30, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 2, 30, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 2, 30, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 10, 30, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 9, 30, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 12, 30, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 12, 31, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 9, 31, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 7, 31, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 11, 31, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 3, 31, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 5, 31, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 4, 31, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 1, 31, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 3, 31, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 11, 31, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 9, 32, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 11, 32, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 11, 32, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 7, 32, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 9, 32, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 1, 32, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 5, 32, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 6, 32, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 6, 32, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 2, 32, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 3, 33, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 11, 33, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 2, 33, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 1, 33, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 5, 33, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 9, 33, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 6, 33, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 11, 33, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 3, 33, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 3, 33, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 6, 34, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 7, 34, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 6, 34, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 6, 34, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 7, 34, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 9, 34, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 4, 34, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 11, 34, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 5, 34, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 11, 34, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 8, 35, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 5, 35, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 2, 35, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 2, 35, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 8, 35, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 4, 35, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 8, 35, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 3, 35, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 5, 35, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 7, 35, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 2, 36, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 3, 36, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 10, 36, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 6, 36, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 10, 36, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 11, 36, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 4, 36, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 10, 36, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 6, 36, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 9, 36, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 3, 37, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 6, 37, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 4, 37, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 3, 37, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 7, 37, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 9, 37, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 7, 37, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 1, 37, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 6, 37, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 8, 37, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 2, 38, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 4, 38, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 7, 38, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 7, 38, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 5, 38, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 2, 38, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 12, 38, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 12, 38, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 6, 38, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 4, 38, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 3, 39, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 6, 39, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 4, 39, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 4, 39, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 8, 39, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 1, 39, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 1, 39, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 8, 39, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 2, 39, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 3, 39, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 2, 40, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 2, 40, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 6, 40, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 4, 40, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 6, 40, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 1, 40, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 10, 40, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 10, 40, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 2, 40, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 2, 40, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 6, 41, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 4, 41, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 2, 41, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 12, 41, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 2, 41, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 9, 41, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 7, 41, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 1, 41, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 3, 41, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 4, 41, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 5, 42, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 4, 42, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 3, 42, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 3, 42, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 7, 42, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 10, 42, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 5, 42, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 9, 42, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 11, 42, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 10, 42, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 6, 43, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 5, 43, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 3, 43, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 11, 43, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 11, 43, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 6, 43, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 2, 43, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 8, 43, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 8, 43, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 6, 43, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 11, 44, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 12, 44, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 5, 44, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 6, 44, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 3, 44, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 6, 44, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 11, 44, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 2, 44, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 7, 44, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 7, 44, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 2, 45, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 1, 45, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 8, 45, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 1, 45, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 10, 45, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 8, 45, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 6, 45, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 10, 45, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 9, 45, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 8, 45, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 1, 46, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 11, 46, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 12, 46, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 2, 46, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 8, 46, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 9, 46, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 12, 46, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 4, 46, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 2, 46, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 10, 46, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 12, 47, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 11, 47, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 4, 47, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 10, 47, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 10, 47, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 3, 47, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 12, 47, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 6, 47, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 6, 47, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 11, 47, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 11, 48, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 6, 48, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 4, 48, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 11, 48, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 5, 48, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 7, 48, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 5, 48, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 10, 48, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 10, 48, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 1, 48, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 3, 49, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 4, 49, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 10, 49, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 9, 49, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 8, 49, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 2, 49, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 5, 49, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 4, 49, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 12, 49, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 12, 49, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 3, 50, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 8, 50, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 12, 50, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 8, 50, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 2, 50, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 1, 50, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 11, 50, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 6, 50, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 2, 50, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 2, 50, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 8, 51, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 6, 51, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 7, 51, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 7, 51, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 8, 51, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 8, 51, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 9, 51, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 9, 51, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 7, 51, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 3, 51, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 3, 52, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 9, 52, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 10, 52, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 3, 52, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 10, 52, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 4, 52, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 3, 52, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 6, 52, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 5, 52, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 2, 52, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 10, 53, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 9, 53, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 7, 53, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 6, 53, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 10, 53, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 10, 53, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 9, 53, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 4, 53, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 8, 53, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 5, 53, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 11, 54, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 9, 54, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 7, 54, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 5, 54, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 2, 54, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 4, 54, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 7, 54, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 5, 54, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 11, 54, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 6, 54, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 1, 55, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 6, 55, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 11, 55, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 4, 55, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 10, 55, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 5, 55, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 9, 55, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 9, 55, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 6, 55, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 8, 55, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 11, 56, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 7, 56, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 6, 56, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 12, 56, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 7, 56, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 10, 56, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 3, 56, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 2, 56, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 7, 56, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 2, 56, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 4, 57, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 8, 57, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 9, 57, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 7, 57, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 7, 57, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 1, 57, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 7, 57, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 3, 57, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 10, 57, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 4, 57, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 5, 58, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 2, 58, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 3, 58, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 3, 58, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 3, 58, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 5, 58, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 8, 58, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 3, 58, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 2, 58, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 11, 58, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 8, 59, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 11, 59, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 11, 59, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 9, 59, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 6, 59, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 8, 59, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 8, 59, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 10, 59, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 2, 59, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 9, 59, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 6, 60, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 2, 60, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 2, 60, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 10, 60, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 10, 60, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 6, 60, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 10, 60, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 7, 60, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 10, 60, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 5, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 3, 61, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 8, 61, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 8, 61, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 11, 61, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 4, 61, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 6, 61, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 7, 61, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 8, 61, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 10, 61, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 2, 61, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 2, 62, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 1, 62, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 3, 62, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 7, 62, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 4, 62, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 7, 62, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 2, 62, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 7, 62, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 8, 62, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 10, 62, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 6, 63, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 5, 63, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 11, 63, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 7, 63, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 5, 63, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 10, 63, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 5, 63, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 4, 63, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 6, 63, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 11, 63, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 3, 64, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 7, 64, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 5, 64, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 7, 64, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 11, 64, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 4, 64, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 8, 64, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 10, 64, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 10, 64, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 10, 64, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 6, 65, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 4, 65, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 9, 65, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 3, 65, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 1, 65, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 4, 65, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 8, 65, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 10, 65, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 3, 65, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 9, 65, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 1, 66, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 9, 66, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 9, 66, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 8, 66, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 10, 66, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 2, 66, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 5, 66, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 10, 66, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 11, 66, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 6, 66, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 7, 67, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 3, 67, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 6, 67, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 5, 67, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 11, 67, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 3, 67, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 4, 67, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 5, 67, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 5, 67, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 5, 67, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 3, 68, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 6, 68, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 9, 68, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 7, 68, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 11, 68, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 11, 68, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 4, 68, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 11, 68, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 11, 68, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 5, 68, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 5, 69, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 10, 69, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 7, 69, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 5, 69, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 10, 69, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 5, 69, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 11, 69, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 10, 69, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 3, 69, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 3, 69, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 1, 70, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 12, 70, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 12, 70, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 8, 70, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 1, 70, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 11, 70, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 7, 70, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 2, 70, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 11, 70, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 10, 70, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 3, 71, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 6, 71, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 2, 71, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 8, 71, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 8, 71, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 5, 71, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 8, 71, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 5, 71, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 10, 71, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 8, 71, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 11, 72, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 2, 72, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 5, 72, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 1, 72, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 9, 72, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 2, 72, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 5, 72, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 2, 72, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 11, 72, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 9, 72, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 3, 73, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 2, 73, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 4, 73, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 2, 73, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 4, 73, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 1, 73, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 6, 73, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 10, 73, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 6, 73, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 7, 73, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 11, 74, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 7, 74, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 11, 74, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 6, 74, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 4, 74, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 6, 74, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 12, 74, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 7, 74, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 2, 74, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 8, 74, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 4, 75, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 4, 75, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 8, 75, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 5, 75, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 8, 75, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 10, 75, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 1, 75, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 5, 75, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 5, 75, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 11, 75, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 2, 76, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 5, 76, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 7, 76, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 6, 76, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 9, 76, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 4, 76, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 1, 76, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 5, 76, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 8, 76, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 7, 76, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 3, 77, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 8, 77, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 9, 77, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 11, 77, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 6, 77, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 4, 77, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 11, 77, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 11, 77, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 5, 77, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 4, 77, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 9, 78, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 2, 78, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 5, 78, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 7, 78, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 8, 78, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 6, 78, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 8, 78, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 7, 78, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 10, 78, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 7, 78, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 5, 79, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 2, 79, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 9, 79, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 5, 79, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 9, 79, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 9, 79, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 12, 79, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 1, 79, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 11, 79, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 6, 79, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 3, 80, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 10, 80, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 11, 80, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 8, 80, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 3, 80, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 5, 80, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 4, 80, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 10, 80, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 6, 80, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 10, 80, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 1, 81, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 2, 81, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 6, 81, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 9, 81, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 11, 81, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 11, 81, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 2, 81, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 2, 81, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 2, 81, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 4, 81, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 5, 82, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 10, 82, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 9, 82, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 4, 82, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 9, 82, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 10, 82, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 10, 82, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 2, 82, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 8, 82, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 3, 82, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 4, 83, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 3, 83, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 8, 83, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 8, 83, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 8, 83, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 9, 83, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 7, 83, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 5, 83, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 11, 83, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 10, 83, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 5, 84, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 9, 84, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 7, 84, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 8, 84, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 2, 84, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 7, 84, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 5, 84, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 1, 84, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 5, 84, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 4, 84, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 4, 85, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 12, 85, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 5, 85, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 8, 85, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 12, 85, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 12, 85, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 11, 85, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 11, 85, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 4, 85, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 2, 85, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 1, 86, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 11, 86, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 8, 86, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 12, 86, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 11, 86, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 8, 86, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 2, 86, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 4, 86, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 7, 86, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 7, 86, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 11, 87, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 9, 87, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 3, 87, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 9, 87, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 9, 87, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 11, 87, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 12, 87, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 5, 87, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 1, 87, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 9, 87, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 10, 88, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 4, 88, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 6, 88, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 4, 88, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 5, 88, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 6, 88, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 9, 88, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 6, 88, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 5, 88, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 9, 88, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 11, 89, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 9, 89, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 6, 89, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 8, 89, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 4, 89, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 11, 89, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 8, 89, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 3, 89, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 4, 89, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 11, 89, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 10, 90, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 5, 90, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 6, 90, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 3, 90, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 9, 90, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 7, 90, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 3, 90, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 7, 90, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 3, 90, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 8, 90, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 4, 91, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 8, 91, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 3, 91, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 11, 91, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 6, 91, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 10, 91, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 9, 91, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 9, 91, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 6, 91, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 4, 91, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 5, 92, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 7, 92, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 6, 92, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 1, 92, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 6, 92, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 5, 92, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 9, 92, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 4, 92, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 9, 92, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 10, 92, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 2, 93, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 11, 93, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 2, 93, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 4, 93, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 3, 93, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 11, 93, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 10, 93, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 11, 93, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 3, 93, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 10, 93, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 9, 94, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 6, 94, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 4, 94, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 7, 94, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 10, 94, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 4, 94, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 7, 94, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 2, 94, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 4, 94, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 3, 94, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 12, 95, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 3, 95, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 7, 95, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 8, 95, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 4, 95, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 11, 95, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 4, 95, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 3, 95, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 3, 95, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 8, 95, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 8, 96, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 9, 96, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 11, 96, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 2, 96, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 8, 96, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 2, 96, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 5, 96, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 7, 96, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 3, 96, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 4, 96, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 3, 97, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 2, 97, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 7, 97, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 8, 97, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 5, 97, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 12, 97, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 3, 97, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 5, 97, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 6, 97, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 2, 97, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 12, 98, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 2, 98, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 4, 98, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 10, 98, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 3, 98, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 7, 98, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 1, 98, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 10, 98, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 10, 98, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 7, 98, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 7, 99, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 2, 99, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 10, 99, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 7, 99, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 5, 99, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 8, 99, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 12, 99, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 12, 99, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 12, 99, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 8, 99, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 7, 100, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 11, 100, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 8, 100, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 4, 100, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 12, 100, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 11, 100, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 12, 100, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 2, 100, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 5, 100, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 11, 100, 2136);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------- Inserting users available instruments ---------------------------------------------------------------------------------
insert into users_available_instruments (user_id, cart_id) values (21, 402)
insert into users_available_instruments (user_id, cart_id) values (21, 632)
insert into users_available_instruments (user_id, cart_id) values (21, 919)
insert into users_available_instruments (user_id, cart_id) values (21, 582)
insert into users_available_instruments (user_id, cart_id) values (21, 24)
insert into users_available_instruments (user_id, cart_id) values (21, 932)
insert into users_available_instruments (user_id, cart_id) values (21, 167)
insert into users_available_instruments (user_id, cart_id) values (21, 435)
insert into users_available_instruments (user_id, cart_id) values (21, 1138)
insert into users_available_instruments (user_id, cart_id) values (21, 945)
insert into users_available_instruments (user_id, cart_id) values (22, 1027)
insert into users_available_instruments (user_id, cart_id) values (22, 785)
insert into users_available_instruments (user_id, cart_id) values (22, 510)
insert into users_available_instruments (user_id, cart_id) values (22, 233)
insert into users_available_instruments (user_id, cart_id) values (22, 805)
insert into users_available_instruments (user_id, cart_id) values (22, 498)
insert into users_available_instruments (user_id, cart_id) values (22, 1141)
insert into users_available_instruments (user_id, cart_id) values (22, 659)
insert into users_available_instruments (user_id, cart_id) values (22, 447)
insert into users_available_instruments (user_id, cart_id) values (22, 352)
insert into users_available_instruments (user_id, cart_id) values (23, 51)
insert into users_available_instruments (user_id, cart_id) values (23, 981)
insert into users_available_instruments (user_id, cart_id) values (23, 433)
insert into users_available_instruments (user_id, cart_id) values (23, 354)
insert into users_available_instruments (user_id, cart_id) values (23, 494)
insert into users_available_instruments (user_id, cart_id) values (23, 1158)
insert into users_available_instruments (user_id, cart_id) values (23, 735)
insert into users_available_instruments (user_id, cart_id) values (23, 656)
insert into users_available_instruments (user_id, cart_id) values (23, 1129)
insert into users_available_instruments (user_id, cart_id) values (23, 1072)
insert into users_available_instruments (user_id, cart_id) values (24, 252)
insert into users_available_instruments (user_id, cart_id) values (24, 918)
insert into users_available_instruments (user_id, cart_id) values (24, 225)
insert into users_available_instruments (user_id, cart_id) values (24, 1110)
insert into users_available_instruments (user_id, cart_id) values (24, 1025)
insert into users_available_instruments (user_id, cart_id) values (24, 232)
insert into users_available_instruments (user_id, cart_id) values (24, 466)
insert into users_available_instruments (user_id, cart_id) values (24, 950)
insert into users_available_instruments (user_id, cart_id) values (24, 785)
insert into users_available_instruments (user_id, cart_id) values (24, 579)
insert into users_available_instruments (user_id, cart_id) values (25, 582)
insert into users_available_instruments (user_id, cart_id) values (25, 284)
insert into users_available_instruments (user_id, cart_id) values (25, 1034)
insert into users_available_instruments (user_id, cart_id) values (25, 902)
insert into users_available_instruments (user_id, cart_id) values (25, 486)
insert into users_available_instruments (user_id, cart_id) values (25, 791)
insert into users_available_instruments (user_id, cart_id) values (25, 979)
insert into users_available_instruments (user_id, cart_id) values (25, 683)
insert into users_available_instruments (user_id, cart_id) values (25, 635)
insert into users_available_instruments (user_id, cart_id) values (25, 482)
insert into users_available_instruments (user_id, cart_id) values (26, 260)
insert into users_available_instruments (user_id, cart_id) values (26, 110)
insert into users_available_instruments (user_id, cart_id) values (26, 863)
insert into users_available_instruments (user_id, cart_id) values (26, 716)
insert into users_available_instruments (user_id, cart_id) values (26, 590)
insert into users_available_instruments (user_id, cart_id) values (26, 622)
insert into users_available_instruments (user_id, cart_id) values (26, 1140)
insert into users_available_instruments (user_id, cart_id) values (26, 827)
insert into users_available_instruments (user_id, cart_id) values (26, 810)
insert into users_available_instruments (user_id, cart_id) values (26, 162)
insert into users_available_instruments (user_id, cart_id) values (27, 1146)
insert into users_available_instruments (user_id, cart_id) values (27, 752)
insert into users_available_instruments (user_id, cart_id) values (27, 963)
insert into users_available_instruments (user_id, cart_id) values (27, 312)
insert into users_available_instruments (user_id, cart_id) values (27, 595)
insert into users_available_instruments (user_id, cart_id) values (27, 663)
insert into users_available_instruments (user_id, cart_id) values (27, 848)
insert into users_available_instruments (user_id, cart_id) values (27, 242)
insert into users_available_instruments (user_id, cart_id) values (27, 214)
insert into users_available_instruments (user_id, cart_id) values (27, 194)
insert into users_available_instruments (user_id, cart_id) values (28, 289)
insert into users_available_instruments (user_id, cart_id) values (28, 44)
insert into users_available_instruments (user_id, cart_id) values (28, 304)
insert into users_available_instruments (user_id, cart_id) values (28, 714)
insert into users_available_instruments (user_id, cart_id) values (28, 837)
insert into users_available_instruments (user_id, cart_id) values (28, 153)
insert into users_available_instruments (user_id, cart_id) values (28, 112)
insert into users_available_instruments (user_id, cart_id) values (28, 508)
insert into users_available_instruments (user_id, cart_id) values (28, 1012)
insert into users_available_instruments (user_id, cart_id) values (28, 1138)
insert into users_available_instruments (user_id, cart_id) values (29, 72)
insert into users_available_instruments (user_id, cart_id) values (29, 363)
insert into users_available_instruments (user_id, cart_id) values (29, 759)
insert into users_available_instruments (user_id, cart_id) values (29, 1154)
insert into users_available_instruments (user_id, cart_id) values (29, 243)
insert into users_available_instruments (user_id, cart_id) values (29, 440)
insert into users_available_instruments (user_id, cart_id) values (29, 528)
insert into users_available_instruments (user_id, cart_id) values (29, 935)
insert into users_available_instruments (user_id, cart_id) values (29, 1110)
insert into users_available_instruments (user_id, cart_id) values (29, 121)
insert into users_available_instruments (user_id, cart_id) values (30, 55)
insert into users_available_instruments (user_id, cart_id) values (30, 423)
insert into users_available_instruments (user_id, cart_id) values (30, 654)
insert into users_available_instruments (user_id, cart_id) values (30, 803)
insert into users_available_instruments (user_id, cart_id) values (30, 370)
insert into users_available_instruments (user_id, cart_id) values (30, 249)
insert into users_available_instruments (user_id, cart_id) values (30, 501)
insert into users_available_instruments (user_id, cart_id) values (30, 34)
insert into users_available_instruments (user_id, cart_id) values (30, 887)
insert into users_available_instruments (user_id, cart_id) values (30, 375)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

