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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'E13V1', 5972.99, 15000.0, 9027.01, '2024-03-20T07:27:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'Bh6k2', 4711.99, 15000.0, 10288.01, '2024-04-04T07:33:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, 'fi0j3', 5483.99, 15000.0, 9516.01, '2024-03-19T07:02:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, '4FIl4', 5376.99, 15000.0, 9623.01, '2024-02-03T07:21:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'aHwy5', 4992.99, 15000.0, 10007.01, '2024-02-13T07:55:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, '9Ami6', 4059.99, 15000.0, 10940.01, '2024-03-27T08:33:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'zdET7', 5640.99, 15000.0, 9359.01, '2024-01-25T05:49:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, '4tyP8', 4422.99, 15000.0, 10577.01, '2024-02-24T05:24:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, '3sek9', 3674.99, 15000.0, 11325.01, '2024-02-14T07:46:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, '6uAK10', 4494.99, 15000.0, 10505.01, '2024-04-04T07:10:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, 'Vh5111', 4708.99, 15000.0, 10291.01, '2024-02-11T07:03:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'Nkiw12', 4088.99, 15000.0, 10911.01, '2024-01-14T05:48:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'PIMa13', 4828.99, 15000.0, 10171.01, '2024-01-01T05:40:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'm03y14', 5195.99, 15000.0, 9804.01, '2024-04-27T05:23:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'O3gu15', 5947.99, 15000.0, 9052.01, '2024-03-08T07:22:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'mg1v16', 5553.99, 15000.0, 9446.01, '2024-04-16T07:39:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'ez1t17', 6823.99, 15000.0, 8176.01, '2024-01-06T07:06:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'VjcH18', 5983.99, 15000.0, 9016.01, '2024-04-15T08:13:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, '6pck19', 6338.99, 15000.0, 8661.01, '2024-04-12T07:42:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'Bksn20', 5405.99, 15000.0, 9594.01, '2024-02-02T07:45:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'cZ0S21', 5185.99, 15000.0, 9814.01, '2024-04-20T08:45:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'DINN22', 5227.99, 15000.0, 9772.01, '2024-04-09T05:37:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'n54q23', 4165.99, 15000.0, 10834.01, '2024-02-24T08:01:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'Kn9524', 6486.99, 15000.0, 8513.01, '2024-01-18T07:02:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'L8qM25', 5709.99, 15000.0, 9290.01, '2024-01-17T08:50:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, 'LE5926', 6587.99, 15000.0, 8412.01, '2024-04-06T07:18:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, 'daNf27', 5822.99, 15000.0, 9177.01, '2024-04-03T07:17:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'JbLP28', 5660.99, 15000.0, 9339.01, '2024-04-09T07:32:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'l9JF29', 5055.99, 15000.0, 9944.01, '2024-04-23T07:14:01');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'D8GF30', 5405.99, 15000.0, 9594.01, '2024-02-27T07:30:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'KlRw31', 6194.99, 15000.0, 8805.01, '2024-04-05T05:40:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 't1tJ32', 6636.99, 15000.0, 8363.01, '2024-02-06T07:54:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'rgtK33', 4205.99, 15000.0, 10794.01, '2024-04-27T08:36:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, 'WTvu34', 5601.99, 15000.0, 9398.01, '2024-02-19T08:02:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'Dzvp35', 6247.99, 15000.0, 8752.01, '2024-03-07T05:03:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'P0FH36', 5936.99, 15000.0, 9063.01, '2024-02-14T05:36:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, '7Nc737', 5847.99, 15000.0, 9152.01, '2024-02-23T05:32:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'fwYQ38', 5831.99, 15000.0, 9168.01, '2024-02-08T08:03:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'jwVW39', 4701.99, 15000.0, 10298.01, '2024-04-03T07:11:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'W4Hd40', 5435.99, 15000.0, 9564.01, '2024-03-05T07:43:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, 'eD5841', 4666.99, 15000.0, 10333.01, '2024-03-20T05:06:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'HNfd42', 4943.99, 15000.0, 10056.01, '2024-03-04T05:29:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'gP4443', 5249.99, 15000.0, 9750.01, '2024-04-26T07:03:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'sdYV44', 5317.99, 15000.0, 9682.01, '2024-04-05T07:29:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, 'oIyn45', 6036.99, 15000.0, 8963.01, '2024-04-03T05:34:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'epoZ46', 5621.99, 15000.0, 9378.01, '2024-04-11T07:08:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, 'lO0Y47', 5083.99, 15000.0, 9916.01, '2024-02-20T05:30:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'iH5u48', 4325.99, 15000.0, 10674.01, '2024-03-06T07:43:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, 'wID449', 5425.99, 15000.0, 9574.01, '2024-02-15T07:34:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'SVaW50', 6121.99, 15000.0, 8878.01, '2024-03-18T07:26:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, 'HGPQ51', 6851.99, 15000.0, 8148.01, '2024-03-11T08:07:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'cahn52', 5282.99, 15000.0, 9717.01, '2024-03-03T07:34:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, '4vzo53', 6373.99, 15000.0, 8626.01, '2024-04-04T07:32:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'vUJL54', 4161.99, 15000.0, 10838.01, '2024-02-01T05:52:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, '6a1t55', 5768.99, 15000.0, 9231.01, '2024-04-12T07:40:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'CX0E56', 5623.99, 15000.0, 9376.01, '2024-03-19T07:28:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 't25157', 5111.99, 15000.0, 9888.01, '2024-04-04T07:19:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'qvIB58', 4921.99, 15000.0, 10078.01, '2024-04-18T05:25:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'yzDT59', 5237.99, 15000.0, 9762.01, '2024-02-11T07:35:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'YXMv60', 4923.99, 15000.0, 10076.01, '2024-03-22T07:15:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, '7AnV61', 4715.99, 15000.0, 10284.01, '2024-04-09T05:02:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'EjNe62', 5204.99, 15000.0, 9795.01, '2024-01-10T07:40:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, 'RRXY63', 5835.99, 15000.0, 9164.01, '2024-04-24T07:46:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, 'Na8F64', 6022.99, 15000.0, 8977.01, '2024-01-16T05:14:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'rKuK65', 5536.99, 15000.0, 9463.01, '2024-04-22T08:53:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'FuBF66', 5422.99, 15000.0, 9577.01, '2024-04-09T05:44:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'f5Gr67', 6026.99, 15000.0, 8973.01, '2024-03-19T05:33:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, 'vY3D68', 3719.99, 15000.0, 11280.01, '2024-03-27T07:18:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'lcP469', 5967.99, 15000.0, 9032.01, '2024-03-26T07:45:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, 'hBC070', 5087.99, 15000.0, 9912.01, '2024-03-09T07:28:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, '1RdJ71', 6761.99, 15000.0, 8238.01, '2024-03-16T08:17:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'PE5e72', 5974.99, 15000.0, 9025.01, '2024-04-20T05:13:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'uE8G73', 3760.99, 15000.0, 11239.01, '2024-03-24T05:53:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, '86Bw74', 4398.99, 15000.0, 10601.01, '2024-04-19T07:13:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'yF3P75', 5728.99, 15000.0, 9271.01, '2024-04-10T08:09:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, 'uHra76', 5362.99, 15000.0, 9637.01, '2024-02-24T05:14:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, 'Y4Ml77', 6271.99, 15000.0, 8728.01, '2024-02-18T07:32:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'dmbj78', 4921.99, 15000.0, 10078.01, '2024-03-11T07:43:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, '83v379', 4663.99, 15000.0, 10336.01, '2024-04-05T08:07:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, 'GIyz80', 5612.99, 15000.0, 9387.01, '2024-02-26T07:31:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, 'cbjD81', 4245.99, 15000.0, 10754.01, '2024-02-11T05:11:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, '9Jj282', 6356.99, 15000.0, 8643.01, '2024-04-15T05:17:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, 'agt683', 6115.99, 15000.0, 8884.01, '2024-01-12T07:47:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 'Fgqy84', 5080.99, 15000.0, 9919.01, '2024-04-10T08:43:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'w70o85', 4349.99, 15000.0, 10650.01, '2024-04-21T07:10:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'SviN86', 4443.99, 15000.0, 10556.01, '2024-04-13T07:11:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'Vr3X87', 6588.99, 15000.0, 8411.01, '2024-04-17T07:31:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'RUMo88', 4662.99, 15000.0, 10337.01, '2024-02-14T07:33:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, 'tnrZ89', 4467.99, 15000.0, 10532.01, '2024-01-14T07:35:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'XYno90', 6019.99, 15000.0, 8980.01, '2024-02-14T07:07:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'JxqQ91', 5389.99, 15000.0, 9610.01, '2024-04-09T07:08:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'Ce8R92', 5041.99, 15000.0, 9958.01, '2024-02-24T08:29:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'XE9j93', 5631.99, 15000.0, 9368.01, '2024-02-23T05:21:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'gkXB94', 5355.99, 15000.0, 9644.01, '2024-02-09T07:43:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'thaK95', 6496.99, 15000.0, 8503.01, '2024-03-02T07:17:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'ooRI96', 5628.99, 15000.0, 9371.01, '2024-02-16T05:42:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'tWJL97', 4146.99, 15000.0, 10853.01, '2024-04-12T05:21:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, 'Xz8G98', 6346.99, 15000.0, 8653.01, '2024-04-17T05:37:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, 'CPaC99', 5734.99, 15000.0, 9265.01, '2024-01-26T05:15:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'k1fo100', 5908.99, 15000.0, 9091.01, '2024-03-25T07:31:47');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_iq_seq ----------------------------------------------------------------------------------------
alter sequence receipt_iq_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 6, 1, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 6, 1, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 11, 1, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 12, 1, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 3, 1, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 8, 1, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 11, 1, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 9, 1, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 4, 1, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 11, 1, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 4, 2, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 9, 2, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 1, 2, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 6, 2, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 6, 2, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 6, 2, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 10, 2, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 2, 2, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 4, 2, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 12, 2, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 10, 3, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 10, 3, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 1, 3, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 2, 3, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 6, 3, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 8, 3, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 10, 3, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 4, 3, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 2, 3, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 5, 3, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 2, 4, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 2, 4, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 8, 4, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 1, 4, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 7, 4, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 12, 4, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 7, 4, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 11, 4, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 9, 4, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 3, 4, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 7, 5, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 3, 5, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 12, 5, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 12, 5, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 7, 5, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 2, 5, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 2, 5, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 4, 5, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 5, 5, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 12, 5, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 4, 6, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 3, 6, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 12, 6, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 8, 6, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 9, 6, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 8, 6, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 2, 6, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 4, 6, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 5, 6, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 8, 6, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 10, 7, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 11, 7, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 8, 7, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 10, 7, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 2, 7, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 8, 7, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 5, 7, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 5, 7, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 2, 7, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 3, 7, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 3, 8, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 6, 8, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 7, 8, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 11, 8, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 9, 8, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 10, 8, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 4, 8, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 2, 8, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 7, 8, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 6, 8, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 11, 9, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 4, 9, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 11, 9, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 11, 9, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 12, 9, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 12, 9, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 11, 9, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 10, 9, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 10, 9, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 6, 9, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 11, 10, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 8, 10, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 5, 10, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 12, 10, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 9, 10, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 10, 10, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 3, 10, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 5, 10, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 12, 10, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 11, 10, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 1, 11, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 9, 11, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 6, 11, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 7, 11, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 12, 11, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 3, 11, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 9, 11, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 12, 11, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 5, 11, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 6, 11, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 11, 12, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 3, 12, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 5, 12, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 4, 12, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 2, 12, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 5, 12, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 1, 12, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 9, 12, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 11, 12, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 9, 12, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 2, 13, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 1, 13, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 5, 13, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 4, 13, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 8, 13, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 2, 13, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 10, 13, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 6, 13, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 11, 13, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 12, 13, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 9, 14, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 2, 14, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 6, 14, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 12, 14, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 4, 14, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 6, 14, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 9, 14, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 5, 14, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 4, 14, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 3, 14, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 8, 15, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 1, 15, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 6, 15, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 4, 15, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 8, 15, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 7, 15, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 4, 15, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 2, 15, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 2, 15, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 10, 15, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 8, 16, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 2, 16, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 10, 16, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 8, 16, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 3, 16, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 3, 16, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 4, 16, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 8, 16, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 9, 16, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 11, 16, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 10, 17, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 5, 17, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 8, 17, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 7, 17, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 12, 17, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 7, 17, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 2, 17, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 7, 17, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 7, 17, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 2, 17, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 3, 18, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 6, 18, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 5, 18, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 3, 18, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 3, 18, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 4, 18, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 10, 18, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 10, 18, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 7, 18, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 8, 18, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 12, 19, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 12, 19, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 1, 19, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 10, 19, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 2, 19, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 11, 19, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 8, 19, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 3, 19, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 12, 19, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 4, 19, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 5, 20, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 9, 20, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 12, 20, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 9, 20, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 11, 20, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 4, 20, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 5, 20, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 11, 20, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 5, 20, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 9, 20, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 1, 21, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 9, 21, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 11, 21, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 4, 21, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 5, 21, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 7, 21, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 4, 21, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 9, 21, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 1, 21, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 10, 21, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 12, 22, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 7, 22, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 7, 22, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 7, 22, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 8, 22, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 5, 22, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 11, 22, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 9, 22, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 2, 22, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 7, 22, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 5, 23, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 2, 23, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 12, 23, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 10, 23, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 8, 23, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 7, 23, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 3, 23, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 3, 23, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 11, 23, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 4, 23, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 4, 24, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 5, 24, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 5, 24, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 2, 24, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 11, 24, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 10, 24, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 11, 24, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 8, 24, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 2, 24, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 4, 24, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 9, 25, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 5, 25, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 2, 25, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 5, 25, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 9, 25, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 3, 25, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 3, 25, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 11, 25, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 2, 25, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 10, 25, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 11, 26, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 2, 26, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 9, 26, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 5, 26, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 9, 26, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 6, 26, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 5, 26, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 6, 26, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 7, 26, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 4, 26, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 11, 27, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 6, 27, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 8, 27, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 7, 27, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 3, 27, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 3, 27, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 8, 27, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 7, 27, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 9, 27, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 11, 27, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 11, 28, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 7, 28, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 3, 28, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 11, 28, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 3, 28, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 6, 28, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 10, 28, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 6, 28, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 11, 28, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 3, 28, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 4, 29, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 7, 29, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 7, 29, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 9, 29, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 1, 29, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 9, 29, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 6, 29, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 12, 29, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 6, 29, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 1, 29, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 3, 30, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 3, 30, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 8, 30, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 9, 30, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 12, 30, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 12, 30, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 8, 30, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 9, 30, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 10, 30, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 9, 30, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 5, 31, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 1, 31, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 5, 31, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 10, 31, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 11, 31, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 12, 31, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 11, 31, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 12, 31, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 2, 31, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 11, 31, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 3, 32, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 2, 32, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 5, 32, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 11, 32, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 6, 32, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 4, 32, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 2, 32, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 7, 32, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 9, 32, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 5, 32, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 12, 33, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 10, 33, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 8, 33, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 6, 33, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 3, 33, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 2, 33, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 4, 33, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 4, 33, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 3, 33, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 5, 33, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 11, 34, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 4, 34, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 3, 34, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 10, 34, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 10, 34, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 8, 34, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 8, 34, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 6, 34, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 4, 34, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 4, 34, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 7, 35, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 6, 35, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 2, 35, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 4, 35, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 11, 35, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 7, 35, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 8, 35, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 5, 35, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 4, 35, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 10, 35, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 7, 36, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 12, 36, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 6, 36, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 4, 36, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 10, 36, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 4, 36, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 6, 36, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 9, 36, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 9, 36, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 2, 36, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 7, 37, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 9, 37, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 10, 37, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 5, 37, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 12, 37, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 2, 37, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 1, 37, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 5, 37, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 2, 37, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 2, 37, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 3, 38, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 3, 38, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 6, 38, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 2, 38, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 8, 38, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 1, 38, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 1, 38, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 8, 38, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 7, 38, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 6, 38, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 12, 39, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 8, 39, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 2, 39, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 4, 39, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 3, 39, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 11, 39, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 2, 39, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 10, 39, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 4, 39, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 2, 39, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 10, 40, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 9, 40, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 2, 40, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 2, 40, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 6, 40, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 3, 40, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 6, 40, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 7, 40, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 12, 40, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 3, 40, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 10, 41, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 1, 41, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 7, 41, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 6, 41, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 3, 41, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 4, 41, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 10, 41, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 11, 41, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 11, 41, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 12, 41, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 10, 42, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 5, 42, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 3, 42, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 11, 42, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 10, 42, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 2, 42, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 4, 42, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 4, 42, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 6, 42, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 5, 42, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 3, 43, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 5, 43, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 5, 43, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 9, 43, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 1, 43, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 2, 43, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 1, 43, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 2, 43, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 7, 43, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 11, 43, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 6, 44, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 5, 44, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 3, 44, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 2, 44, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 7, 44, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 5, 44, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 9, 44, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 2, 44, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 10, 44, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 7, 44, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 9, 45, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 10, 45, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 5, 45, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 3, 45, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 1, 45, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 9, 45, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 7, 45, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 6, 45, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 8, 45, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 2, 45, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 11, 46, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 5, 46, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 9, 46, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 4, 46, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 1, 46, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 7, 46, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 3, 46, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 12, 46, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 4, 46, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 2, 46, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 6, 47, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 11, 47, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 5, 47, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 7, 47, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 3, 47, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 10, 47, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 2, 47, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 7, 47, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 10, 47, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 12, 47, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 2, 48, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 3, 48, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 8, 48, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 10, 48, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 3, 48, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 6, 48, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 6, 48, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 10, 48, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 10, 48, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 3, 48, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 2, 49, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 5, 49, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 1, 49, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 8, 49, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 8, 49, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 3, 49, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 5, 49, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 12, 49, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 9, 49, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 6, 49, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 9, 50, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 9, 50, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 2, 50, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 4, 50, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 9, 50, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 7, 50, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 8, 50, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 3, 50, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 10, 50, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 2, 50, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 12, 51, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 3, 51, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 1, 51, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 5, 51, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 2, 51, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 5, 51, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 4, 51, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 7, 51, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 4, 51, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 3, 51, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 3, 52, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 5, 52, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 5, 52, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 7, 52, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 1, 52, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 6, 52, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 9, 52, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 11, 52, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 8, 52, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 6, 52, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 9, 53, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 11, 53, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 3, 53, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 8, 53, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 8, 53, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 1, 53, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 8, 53, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 4, 53, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 5, 53, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 7, 53, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 12, 54, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 10, 54, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 10, 54, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 10, 54, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 2, 54, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 2, 54, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 4, 54, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 1, 54, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 4, 54, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 2, 54, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 9, 55, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 4, 55, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 12, 55, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 4, 55, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 8, 55, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 7, 55, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 6, 55, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 10, 55, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 10, 55, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 7, 55, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 4, 56, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 3, 56, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 5, 56, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 4, 56, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 5, 56, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 7, 56, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 11, 56, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 8, 56, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 4, 56, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 6, 56, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 7, 57, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 4, 57, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 12, 57, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 9, 57, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 6, 57, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 2, 57, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 7, 57, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 3, 57, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 6, 57, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 6, 57, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 6, 58, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 3, 58, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 6, 58, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 9, 58, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 12, 58, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 11, 58, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 7, 58, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 6, 58, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 9, 58, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 7, 58, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 10, 59, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 5, 59, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 2, 59, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 5, 59, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 3, 59, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 8, 59, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 1, 59, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 12, 59, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 4, 59, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 5, 59, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 5, 60, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 12, 60, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 4, 60, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 6, 60, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 11, 60, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 10, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 5, 60, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 6, 60, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 5, 60, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 9, 60, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 11, 61, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 2, 61, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 11, 61, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 3, 61, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 3, 61, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 12, 61, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 5, 61, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 11, 61, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 8, 61, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 11, 61, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 8, 62, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 7, 62, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 5, 62, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 11, 62, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 7, 62, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 4, 62, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 5, 62, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 5, 62, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 8, 62, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 9, 62, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 9, 63, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 3, 63, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 11, 63, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 3, 63, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 7, 63, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 5, 63, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 7, 63, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 11, 63, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 12, 63, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 1, 63, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 7, 64, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 12, 64, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 11, 64, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 8, 64, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 9, 64, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 5, 64, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 2, 64, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 4, 64, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 10, 64, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 11, 64, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 8, 65, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 6, 65, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 10, 65, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 7, 65, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 6, 65, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 7, 65, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 2, 65, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 12, 65, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 10, 65, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 3, 65, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 10, 66, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 2, 66, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 10, 66, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 1, 66, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 5, 66, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 1, 66, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 8, 66, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 11, 66, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 1, 66, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 8, 66, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 5, 67, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 1, 67, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 3, 67, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 4, 67, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 4, 67, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 7, 67, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 6, 67, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 1, 67, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 6, 67, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 5, 67, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 9, 68, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 9, 68, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 4, 68, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 3, 68, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 12, 68, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 5, 68, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 9, 68, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 6, 68, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 5, 68, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 4, 68, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 4, 69, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 2, 69, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 1, 69, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 7, 69, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 5, 69, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 6, 69, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 3, 69, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 2, 69, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 5, 69, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 10, 69, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 3, 70, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 8, 70, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 5, 70, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 10, 70, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 2, 70, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 3, 70, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 5, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 8, 70, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 3, 70, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 7, 70, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 11, 71, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 7, 71, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 6, 71, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 5, 71, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 12, 71, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 10, 71, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 6, 71, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 8, 71, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 5, 71, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 8, 71, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 6, 72, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 7, 72, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 3, 72, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 8, 72, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 2, 72, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 6, 72, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 8, 72, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 6, 72, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 10, 72, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 10, 72, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 1, 73, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 7, 73, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 7, 73, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 2, 73, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 4, 73, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 4, 73, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 8, 73, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 1, 73, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 10, 73, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 10, 73, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 8, 74, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 8, 74, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 3, 74, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 2, 74, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 9, 74, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 8, 74, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 5, 74, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 3, 74, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 7, 74, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 2, 74, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 8, 75, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 7, 75, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 11, 75, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 12, 75, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 4, 75, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 11, 75, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 11, 75, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 3, 75, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 11, 75, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 7, 75, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 2, 76, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 2, 76, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 12, 76, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 10, 76, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 12, 76, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 2, 76, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 6, 76, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 3, 76, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 3, 76, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 10, 76, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 1, 77, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 7, 77, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 8, 77, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 5, 77, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 5, 77, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 9, 77, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 11, 77, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 3, 77, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 7, 77, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 4, 77, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 11, 78, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 8, 78, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 3, 78, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 10, 78, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 6, 78, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 6, 78, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 11, 78, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 12, 78, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 5, 78, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 6, 78, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 4, 79, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 3, 79, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 2, 79, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 3, 79, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 10, 79, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 1, 79, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 11, 79, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 11, 79, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 4, 79, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 3, 79, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 10, 80, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 6, 80, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 12, 80, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 11, 80, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 3, 80, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 2, 80, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 8, 80, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 2, 80, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 3, 80, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 4, 80, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 1, 81, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 12, 81, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 6, 81, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 12, 81, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 9, 81, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 11, 81, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 7, 81, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 3, 81, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 6, 81, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 4, 81, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 8, 82, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 5, 82, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 8, 82, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 8, 82, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 4, 82, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 11, 82, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 2, 82, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 8, 82, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 8, 82, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 2, 82, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 4, 83, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 8, 83, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 2, 83, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 6, 83, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 3, 83, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 9, 83, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 11, 83, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 10, 83, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 7, 83, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 4, 83, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 3, 84, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 3, 84, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 9, 84, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 7, 84, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 3, 84, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 9, 84, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 5, 84, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 9, 84, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 3, 84, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 5, 84, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 5, 85, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 5, 85, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 6, 85, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 4, 85, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 12, 85, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 6, 85, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 4, 85, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 4, 85, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 8, 85, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 2, 85, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 10, 86, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 5, 86, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 8, 86, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 10, 86, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 8, 86, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 7, 86, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 7, 86, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 2, 86, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 8, 86, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 3, 86, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 6, 87, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 4, 87, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 2, 87, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 11, 87, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 2, 87, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 5, 87, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 3, 87, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 11, 87, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 5, 87, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 2, 87, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 6, 88, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 4, 88, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 4, 88, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 10, 88, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 10, 88, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 9, 88, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 7, 88, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 2, 88, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 5, 88, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 8, 88, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 2, 89, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 7, 89, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 12, 89, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 11, 89, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 7, 89, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 11, 89, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 11, 89, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 11, 89, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 6, 89, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 2, 89, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 3, 90, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 7, 90, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 12, 90, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 10, 90, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 9, 90, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 12, 90, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 6, 90, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 8, 90, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 11, 90, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 2, 90, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 5, 91, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 7, 91, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 1, 91, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 5, 91, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 12, 91, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 8, 91, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 7, 91, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 1, 91, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 8, 91, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 5, 91, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 3, 92, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 10, 92, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 10, 92, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 1, 92, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 5, 92, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 8, 92, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 4, 92, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 1, 92, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 10, 92, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 11, 92, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 4, 93, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 10, 93, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 4, 93, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 4, 93, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 7, 93, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 7, 93, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 8, 93, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 9, 93, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 9, 93, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 9, 93, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 9, 94, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 7, 94, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 7, 94, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 5, 94, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 11, 94, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 12, 94, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 3, 94, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 2, 94, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 11, 94, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 4, 94, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 4, 95, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 12, 95, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 11, 95, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 2, 95, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 5, 95, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 5, 95, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 12, 95, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 4, 95, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 7, 95, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 5, 95, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 5, 96, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 3, 96, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 5, 96, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 7, 96, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 12, 96, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 3, 96, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 8, 96, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 2, 96, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 2, 96, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 5, 96, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 8, 97, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 4, 97, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 6, 97, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 9, 97, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 2, 97, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 6, 97, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 7, 97, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 8, 97, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 8, 97, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 7, 97, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 5, 98, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 7, 98, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 8, 98, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 4, 98, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 5, 98, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 9, 98, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 6, 98, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 8, 98, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 3, 98, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 6, 98, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 7, 99, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 12, 99, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 3, 99, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 2, 99, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 9, 99, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 2, 99, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 12, 99, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 5, 99, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 9, 99, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 1, 99, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 5, 100, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 8, 100, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 11, 100, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 9, 100, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 6, 100, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 7, 100, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 4, 100, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 11, 100, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 1, 100, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 12, 100, 2173);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------- Inserting users available instruments ---------------------------------------------------------------------------------
insert into users_available_instruments (user_id, cart_id) values (21, 1161)
insert into users_available_instruments (user_id, cart_id) values (21, 930)
insert into users_available_instruments (user_id, cart_id) values (21, 850)
insert into users_available_instruments (user_id, cart_id) values (21, 1162)
insert into users_available_instruments (user_id, cart_id) values (21, 92)
insert into users_available_instruments (user_id, cart_id) values (21, 884)
insert into users_available_instruments (user_id, cart_id) values (21, 509)
insert into users_available_instruments (user_id, cart_id) values (21, 1159)
insert into users_available_instruments (user_id, cart_id) values (21, 1065)
insert into users_available_instruments (user_id, cart_id) values (21, 314)
insert into users_available_instruments (user_id, cart_id) values (22, 861)
insert into users_available_instruments (user_id, cart_id) values (22, 106)
insert into users_available_instruments (user_id, cart_id) values (22, 914)
insert into users_available_instruments (user_id, cart_id) values (22, 1036)
insert into users_available_instruments (user_id, cart_id) values (22, 75)
insert into users_available_instruments (user_id, cart_id) values (22, 1086)
insert into users_available_instruments (user_id, cart_id) values (22, 444)
insert into users_available_instruments (user_id, cart_id) values (22, 1161)
insert into users_available_instruments (user_id, cart_id) values (22, 187)
insert into users_available_instruments (user_id, cart_id) values (22, 1019)
insert into users_available_instruments (user_id, cart_id) values (23, 845)
insert into users_available_instruments (user_id, cart_id) values (23, 171)
insert into users_available_instruments (user_id, cart_id) values (23, 172)
insert into users_available_instruments (user_id, cart_id) values (23, 950)
insert into users_available_instruments (user_id, cart_id) values (23, 344)
insert into users_available_instruments (user_id, cart_id) values (23, 741)
insert into users_available_instruments (user_id, cart_id) values (23, 303)
insert into users_available_instruments (user_id, cart_id) values (23, 868)
insert into users_available_instruments (user_id, cart_id) values (23, 283)
insert into users_available_instruments (user_id, cart_id) values (23, 555)
insert into users_available_instruments (user_id, cart_id) values (24, 499)
insert into users_available_instruments (user_id, cart_id) values (24, 997)
insert into users_available_instruments (user_id, cart_id) values (24, 1018)
insert into users_available_instruments (user_id, cart_id) values (24, 1034)
insert into users_available_instruments (user_id, cart_id) values (24, 192)
insert into users_available_instruments (user_id, cart_id) values (24, 588)
insert into users_available_instruments (user_id, cart_id) values (24, 729)
insert into users_available_instruments (user_id, cart_id) values (24, 961)
insert into users_available_instruments (user_id, cart_id) values (24, 1074)
insert into users_available_instruments (user_id, cart_id) values (24, 935)
insert into users_available_instruments (user_id, cart_id) values (25, 466)
insert into users_available_instruments (user_id, cart_id) values (25, 1139)
insert into users_available_instruments (user_id, cart_id) values (25, 915)
insert into users_available_instruments (user_id, cart_id) values (25, 1038)
insert into users_available_instruments (user_id, cart_id) values (25, 905)
insert into users_available_instruments (user_id, cart_id) values (25, 251)
insert into users_available_instruments (user_id, cart_id) values (25, 933)
insert into users_available_instruments (user_id, cart_id) values (25, 729)
insert into users_available_instruments (user_id, cart_id) values (25, 1137)
insert into users_available_instruments (user_id, cart_id) values (25, 1164)
insert into users_available_instruments (user_id, cart_id) values (26, 851)
insert into users_available_instruments (user_id, cart_id) values (26, 701)
insert into users_available_instruments (user_id, cart_id) values (26, 366)
insert into users_available_instruments (user_id, cart_id) values (26, 197)
insert into users_available_instruments (user_id, cart_id) values (26, 589)
insert into users_available_instruments (user_id, cart_id) values (26, 107)
insert into users_available_instruments (user_id, cart_id) values (26, 1161)
insert into users_available_instruments (user_id, cart_id) values (26, 1142)
insert into users_available_instruments (user_id, cart_id) values (26, 722)
insert into users_available_instruments (user_id, cart_id) values (26, 621)
insert into users_available_instruments (user_id, cart_id) values (27, 616)
insert into users_available_instruments (user_id, cart_id) values (27, 188)
insert into users_available_instruments (user_id, cart_id) values (27, 337)
insert into users_available_instruments (user_id, cart_id) values (27, 323)
insert into users_available_instruments (user_id, cart_id) values (27, 386)
insert into users_available_instruments (user_id, cart_id) values (27, 117)
insert into users_available_instruments (user_id, cart_id) values (27, 741)
insert into users_available_instruments (user_id, cart_id) values (27, 962)
insert into users_available_instruments (user_id, cart_id) values (27, 808)
insert into users_available_instruments (user_id, cart_id) values (27, 309)
insert into users_available_instruments (user_id, cart_id) values (28, 1044)
insert into users_available_instruments (user_id, cart_id) values (28, 1091)
insert into users_available_instruments (user_id, cart_id) values (28, 228)
insert into users_available_instruments (user_id, cart_id) values (28, 593)
insert into users_available_instruments (user_id, cart_id) values (28, 1108)
insert into users_available_instruments (user_id, cart_id) values (28, 835)
insert into users_available_instruments (user_id, cart_id) values (28, 601)
insert into users_available_instruments (user_id, cart_id) values (28, 943)
insert into users_available_instruments (user_id, cart_id) values (28, 562)
insert into users_available_instruments (user_id, cart_id) values (28, 394)
insert into users_available_instruments (user_id, cart_id) values (29, 360)
insert into users_available_instruments (user_id, cart_id) values (29, 455)
insert into users_available_instruments (user_id, cart_id) values (29, 549)
insert into users_available_instruments (user_id, cart_id) values (29, 923)
insert into users_available_instruments (user_id, cart_id) values (29, 861)
insert into users_available_instruments (user_id, cart_id) values (29, 1131)
insert into users_available_instruments (user_id, cart_id) values (29, 883)
insert into users_available_instruments (user_id, cart_id) values (29, 1114)
insert into users_available_instruments (user_id, cart_id) values (29, 73)
insert into users_available_instruments (user_id, cart_id) values (29, 364)
insert into users_available_instruments (user_id, cart_id) values (30, 1136)
insert into users_available_instruments (user_id, cart_id) values (30, 1032)
insert into users_available_instruments (user_id, cart_id) values (30, 335)
insert into users_available_instruments (user_id, cart_id) values (30, 370)
insert into users_available_instruments (user_id, cart_id) values (30, 694)
insert into users_available_instruments (user_id, cart_id) values (30, 405)
insert into users_available_instruments (user_id, cart_id) values (30, 611)
insert into users_available_instruments (user_id, cart_id) values (30, 798)
insert into users_available_instruments (user_id, cart_id) values (30, 1129)
insert into users_available_instruments (user_id, cart_id) values (30, 165)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

