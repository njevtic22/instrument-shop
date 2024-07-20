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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'QSwC1', 5190.99, 15000.0, 9809.01, '2024-02-04T10:15:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'k2Xp2', 5152.99, 15000.0, 9847.01, '2024-04-20T10:44:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, '5gI53', 5782.99, 15000.0, 9217.01, '2024-04-25T10:34:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, 'oCSu4', 5351.99, 15000.0, 9648.01, '2024-02-06T10:09:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'UwTa5', 6075.99, 15000.0, 8924.01, '2024-04-05T09:15:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, '2ZNS6', 4727.99, 15000.0, 10272.01, '2024-03-11T15:08:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'HUuF7', 5534.99, 15000.0, 9465.01, '2024-03-15T17:34:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'KCQt8', 4916.99, 15000.0, 10083.01, '2024-02-18T14:09:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, 'pdIL9', 5295.99, 15000.0, 9704.01, '2024-01-05T09:22:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, 'VHBF10', 5654.99, 15000.0, 9345.01, '2024-02-23T15:03:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, 'nVJh11', 6085.99, 15000.0, 8914.01, '2024-02-05T17:40:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'qTj512', 4790.99, 15000.0, 10209.01, '2024-03-09T12:45:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'M0Fm13', 5402.99, 15000.0, 9597.01, '2024-02-02T17:07:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'VSLi14', 4766.99, 15000.0, 10233.01, '2024-03-21T10:46:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, '6TwZ15', 5483.99, 15000.0, 9516.01, '2024-03-19T10:55:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'xYUl16', 7015.99, 15000.0, 7984.01, '2024-02-09T13:35:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'ePJU17', 5756.99, 15000.0, 9243.01, '2024-03-24T16:01:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'G9Uq18', 4871.99, 15000.0, 10128.01, '2024-02-14T17:35:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'U8rZ19', 5614.99, 15000.0, 9385.01, '2024-05-03T12:16:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'FFKI20', 6314.99, 15000.0, 8685.01, '2024-03-12T13:05:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'czBO21', 5174.99, 15000.0, 9825.01, '2024-05-03T11:36:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'mP4Q22', 7216.99, 15000.0, 7783.01, '2024-06-22T15:04:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'oCPI23', 4744.99, 15000.0, 10255.01, '2024-05-11T10:33:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'sG4j24', 6381.99, 15000.0, 8618.01, '2024-03-10T10:07:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'vZ4R25', 5441.99, 15000.0, 9558.01, '2024-02-11T13:12:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, '3Lbv26', 6278.99, 15000.0, 8721.01, '2024-02-12T13:39:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, '2KWP27', 5646.99, 15000.0, 9353.01, '2024-02-21T09:33:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'RYGJ28', 6677.99, 15000.0, 8322.01, '2024-05-14T12:33:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'M0AY29', 4735.99, 15000.0, 10264.01, '2024-04-06T16:10:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'uSZ130', 4688.99, 15000.0, 10311.01, '2024-04-05T09:38:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'Aa7i31', 5912.99, 15000.0, 9087.01, '2024-05-15T11:52:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'lByS32', 7049.99, 15000.0, 7950.01, '2024-01-08T12:35:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'Pti433', 6054.99, 15000.0, 8945.01, '2024-04-26T17:49:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, '7wHn34', 4738.99, 15000.0, 10261.01, '2024-06-02T17:12:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'osZl35', 6005.99, 15000.0, 8994.01, '2024-05-21T16:02:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, '5OIu36', 5808.99, 15000.0, 9191.01, '2024-02-12T13:22:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, 'plel37', 5635.99, 15000.0, 9364.01, '2024-03-14T16:35:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'jJpm38', 4962.99, 15000.0, 10037.01, '2024-03-13T13:31:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'R9ET39', 5862.99, 15000.0, 9137.01, '2024-03-05T15:22:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'NRPZ40', 5759.99, 15000.0, 9240.01, '2024-03-15T10:23:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, '4w9q41', 5660.99, 15000.0, 9339.01, '2024-03-03T17:39:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, '2iKU42', 4897.99, 15000.0, 10102.01, '2024-06-03T16:26:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, '5Pnd43', 5014.99, 15000.0, 9985.01, '2024-05-26T14:37:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'fLEf44', 5049.99, 15000.0, 9950.01, '2024-02-05T10:28:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, 'bdr745', 5121.99, 15000.0, 9878.01, '2024-02-08T11:47:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'uuGJ46', 5690.99, 15000.0, 9309.01, '2024-04-03T11:22:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, '9bnE47', 5399.99, 15000.0, 9600.01, '2024-02-04T16:28:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'm6fh48', 6559.99, 15000.0, 8440.01, '2024-03-16T13:27:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, 'KqU949', 5182.99, 15000.0, 9817.01, '2024-06-01T10:44:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'XOFd50', 6261.99, 15000.0, 8738.01, '2024-03-16T16:03:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, '8QIA51', 6551.99, 15000.0, 8448.01, '2024-04-19T09:29:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'U69J52', 4713.99, 15000.0, 10286.01, '2024-05-27T17:34:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, 'Y4PK53', 4555.99, 15000.0, 10444.01, '2024-05-19T15:35:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'KAPh54', 4352.99, 15000.0, 10647.01, '2024-05-22T13:34:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'J7E155', 6112.99, 15000.0, 8887.01, '2024-04-18T17:10:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'u3a656', 5575.99, 15000.0, 9424.01, '2024-04-09T14:02:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'YhxY57', 5449.99, 15000.0, 9550.01, '2024-05-20T10:13:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'eViq58', 5663.99, 15000.0, 9336.01, '2024-05-24T15:01:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, '7v8H59', 5069.99, 15000.0, 9930.01, '2024-06-26T12:19:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'MU1x60', 5771.99, 15000.0, 9228.01, '2024-04-01T17:13:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, 'tpXi61', 6118.99, 15000.0, 8881.01, '2024-02-05T14:04:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'vjrB62', 5306.99, 15000.0, 9693.01, '2024-06-21T10:21:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, '95hf63', 6469.99, 15000.0, 8530.01, '2024-04-09T12:05:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, '70O364', 6138.99, 15000.0, 8861.01, '2024-06-08T11:29:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'mks365', 4711.99, 15000.0, 10288.01, '2024-01-05T14:23:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'J5lg66', 6171.99, 15000.0, 8828.01, '2024-04-03T16:22:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'uxCX67', 3378.99, 15000.0, 11621.01, '2024-02-27T17:28:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, 'mRYD68', 5666.99, 15000.0, 9333.01, '2024-05-27T10:11:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'zom069', 6578.99, 15000.0, 8421.01, '2024-06-17T14:11:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, 'qCGO70', 5758.99, 15000.0, 9241.01, '2024-04-11T17:09:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, 'K5ZA71', 5999.99, 15000.0, 9000.01, '2024-03-10T10:14:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, '3ifX72', 5936.99, 15000.0, 9063.01, '2024-02-11T16:49:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'ovOM73', 4888.99, 15000.0, 10111.01, '2024-05-21T13:21:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'shaW74', 6535.99, 15000.0, 8464.01, '2024-04-08T10:40:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'A6e875', 6240.99, 15000.0, 8759.01, '2024-05-14T17:21:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, 'W38U76', 4442.99, 15000.0, 10557.01, '2024-03-05T12:49:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, 'bmw977', 5113.99, 15000.0, 9886.01, '2024-03-07T17:23:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, '2yT578', 6929.99, 15000.0, 8070.01, '2024-05-18T10:46:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, 'OtxW79', 6140.99, 15000.0, 8859.01, '2024-05-26T12:41:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, 'x8nY80', 5310.99, 15000.0, 9689.01, '2024-05-18T13:24:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, 'vrjH81', 5164.99, 15000.0, 9835.01, '2024-05-07T15:25:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, 'xnlv82', 5114.99, 15000.0, 9885.01, '2024-04-21T17:32:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, 'MgNG83', 6730.99, 15000.0, 8269.01, '2024-05-03T12:27:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 'jel484', 5917.99, 15000.0, 9082.01, '2024-03-05T11:19:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'BwBA85', 5120.99, 15000.0, 9879.01, '2024-01-25T17:23:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'fSjk86', 5621.99, 15000.0, 9378.01, '2024-05-07T12:14:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'e9f187', 4882.99, 15000.0, 10117.01, '2024-05-16T12:35:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'T2cg88', 3698.99, 15000.0, 11301.01, '2024-06-15T13:49:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, '8DUI89', 6032.99, 15000.0, 8967.01, '2024-03-22T13:16:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'cxUJ90', 4811.99, 15000.0, 10188.01, '2024-05-05T16:45:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'aLxD91', 5534.99, 15000.0, 9465.01, '2024-02-01T17:24:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'nhx692', 4642.99, 15000.0, 10357.01, '2024-05-04T17:13:55');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'gQ2t93', 5823.99, 15000.0, 9176.01, '2024-05-13T17:51:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'ZgM194', 4857.99, 15000.0, 10142.01, '2024-02-06T15:52:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'GvL595', 4999.99, 15000.0, 10000.01, '2024-02-01T12:20:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'CLCK96', 5723.99, 15000.0, 9276.01, '2024-02-15T11:30:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'ZoKs97', 4254.99, 15000.0, 10745.01, '2024-05-23T13:20:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, 'pdfh98', 6049.99, 15000.0, 8950.01, '2024-04-16T14:27:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, '2reA99', 6326.99, 15000.0, 8673.01, '2024-03-16T13:33:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'yZjr100', 5861.99, 15000.0, 9138.01, '2024-02-09T10:28:20');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 2, 1, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 5, 1, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 3, 1, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 6, 1, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 2, 1, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 1, 1, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 9, 1, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 3, 1, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 6, 1, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 10, 1, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 11, 2, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 6, 2, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 8, 2, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 11, 2, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 12, 2, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 8, 2, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 11, 2, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 7, 2, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 4, 2, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 9, 2, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 4, 3, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 4, 3, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 10, 3, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 7, 3, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 1, 3, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 12, 3, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 7, 3, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 6, 3, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 7, 3, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 2, 3, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 2, 4, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 2, 4, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 2, 4, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 6, 4, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 7, 4, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 12, 4, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 5, 4, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 4, 4, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 8, 4, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 1, 4, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 7, 5, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 1, 5, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 10, 5, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 9, 5, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 9, 5, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 12, 5, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 5, 5, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 10, 5, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 12, 5, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 6, 5, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 6, 6, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 6, 6, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 4, 6, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 8, 6, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 3, 6, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 12, 6, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 4, 6, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 8, 6, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 6, 6, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 4, 6, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 3, 7, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 6, 7, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 8, 7, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 6, 7, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 11, 7, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 2, 7, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 3, 7, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 10, 7, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 10, 7, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 11, 7, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 3, 8, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 3, 8, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 3, 8, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 6, 8, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 6, 8, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 5, 8, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 2, 8, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 2, 8, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 7, 8, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 7, 8, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 10, 9, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 6, 9, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 6, 9, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 1, 9, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 8, 9, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 4, 9, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 7, 9, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 1, 9, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 5, 9, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 4, 9, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 12, 10, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 1, 10, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 6, 10, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 6, 10, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 11, 10, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 8, 10, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 1, 10, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 3, 10, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 10, 10, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 6, 10, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 6, 11, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 6, 11, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 10, 11, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 2, 11, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 7, 11, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 10, 11, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 4, 11, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 3, 11, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 9, 11, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 9, 11, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 12, 12, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 5, 12, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 8, 12, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 12, 12, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 10, 12, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 2, 12, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 5, 12, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 7, 12, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 6, 12, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 6, 12, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 12, 13, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 8, 13, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 10, 13, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 6, 13, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 4, 13, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 10, 13, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 8, 13, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 9, 13, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 7, 13, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 4, 13, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 6, 14, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 5, 14, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 4, 14, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 11, 14, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 1, 14, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 1, 14, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 6, 14, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 11, 14, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 11, 14, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 10, 14, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 4, 15, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 7, 15, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 2, 15, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 4, 15, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 8, 15, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 2, 15, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 5, 15, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 9, 15, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 8, 15, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 10, 15, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 3, 16, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 10, 16, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 12, 16, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 5, 16, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 8, 16, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 2, 16, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 3, 16, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 1, 16, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 3, 16, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 2, 16, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 6, 17, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 9, 17, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 3, 17, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 4, 17, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 1, 17, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 1, 17, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 5, 17, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 5, 17, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 9, 17, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 9, 17, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 7, 18, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 6, 18, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 2, 18, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 5, 18, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 12, 18, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 1, 18, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 6, 18, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 4, 18, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 7, 18, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 11, 18, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 8, 19, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 10, 19, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 6, 19, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 11, 19, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 3, 19, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 11, 19, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 7, 19, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 1, 19, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 3, 19, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 4, 19, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 10, 20, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 11, 20, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 3, 20, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 6, 20, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 9, 20, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 9, 20, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 6, 20, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 3, 20, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 11, 20, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 8, 20, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 5, 21, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 9, 21, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 6, 21, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 10, 21, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 4, 21, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 12, 21, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 3, 21, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 4, 21, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 8, 21, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 5, 21, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 6, 22, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 4, 22, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 8, 22, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 8, 22, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 3, 22, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 2, 22, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 6, 22, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 9, 22, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 7, 22, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 3, 22, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 12, 23, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 6, 23, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 10, 23, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 3, 23, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 7, 23, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 8, 23, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 11, 23, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 9, 23, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 7, 23, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 5, 23, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 6, 24, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 7, 24, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 7, 24, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 5, 24, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 11, 24, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 2, 24, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 9, 24, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 5, 24, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 12, 24, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 8, 24, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 9, 25, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 5, 25, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 5, 25, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 10, 25, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 4, 25, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 11, 25, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 9, 25, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 2, 25, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 2, 25, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 3, 25, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 5, 26, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 4, 26, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 12, 26, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 3, 26, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 3, 26, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 2, 26, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 10, 26, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 10, 26, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 5, 26, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 8, 26, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 8, 27, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 9, 27, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 9, 27, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 6, 27, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 11, 27, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 11, 27, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 4, 27, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 3, 27, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 5, 27, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 8, 27, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 8, 28, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 2, 28, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 9, 28, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 7, 28, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 7, 28, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 10, 28, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 7, 28, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 12, 28, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 11, 28, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 6, 28, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 9, 29, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 5, 29, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 10, 29, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 8, 29, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 3, 29, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 5, 29, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 4, 29, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 2, 29, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 6, 29, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 2, 29, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 10, 30, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 2, 30, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 11, 30, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 9, 30, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 11, 30, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 6, 30, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 7, 30, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 12, 30, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 3, 30, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 10, 30, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 4, 31, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 11, 31, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 12, 31, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 7, 31, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 9, 31, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 8, 31, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 6, 31, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 9, 31, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 2, 31, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 3, 31, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 3, 32, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 2, 32, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 4, 32, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 7, 32, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 4, 32, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 5, 32, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 8, 32, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 7, 32, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 10, 32, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 9, 32, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 2, 33, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 4, 33, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 2, 33, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 10, 33, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 11, 33, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 10, 33, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 6, 33, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 9, 33, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 5, 33, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 4, 33, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 8, 34, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 10, 34, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 3, 34, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 10, 34, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 11, 34, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 3, 34, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 12, 34, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 9, 34, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 10, 34, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 3, 34, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 10, 35, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 1, 35, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 7, 35, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 10, 35, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 5, 35, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 11, 35, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 3, 35, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 5, 35, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 7, 35, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 3, 35, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 7, 36, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 1, 36, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 8, 36, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 11, 36, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 2, 36, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 11, 36, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 12, 36, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 3, 36, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 10, 36, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 5, 36, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 7, 37, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 1, 37, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 2, 37, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 4, 37, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 1, 37, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 9, 37, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 7, 37, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 12, 37, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 11, 37, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 12, 37, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 2, 38, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 11, 38, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 12, 38, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 5, 38, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 9, 38, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 2, 38, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 8, 38, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 11, 38, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 1, 38, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 5, 38, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 2, 39, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 2, 39, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 7, 39, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 6, 39, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 1, 39, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 7, 39, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 8, 39, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 7, 39, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 6, 39, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 6, 39, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 4, 40, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 9, 40, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 8, 40, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 8, 40, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 8, 40, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 7, 40, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 9, 40, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 6, 40, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 11, 40, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 5, 40, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 2, 41, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 2, 41, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 4, 41, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 7, 41, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 10, 41, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 5, 41, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 10, 41, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 8, 41, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 10, 41, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 6, 41, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 4, 42, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 9, 42, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 3, 42, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 2, 42, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 4, 42, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 5, 42, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 7, 42, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 4, 42, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 1, 42, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 11, 42, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 5, 43, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 10, 43, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 10, 43, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 10, 43, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 10, 43, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 7, 43, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 8, 43, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 5, 43, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 10, 43, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 4, 43, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 10, 44, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 12, 44, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 2, 44, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 8, 44, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 2, 44, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 5, 44, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 8, 44, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 2, 44, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 11, 44, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 9, 44, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 8, 45, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 2, 45, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 7, 45, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 10, 45, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 5, 45, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 11, 45, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 11, 45, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 8, 45, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 2, 45, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 9, 45, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 2, 46, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 7, 46, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 11, 46, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 3, 46, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 6, 46, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 9, 46, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 9, 46, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 2, 46, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 11, 46, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 10, 46, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 7, 47, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 5, 47, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 9, 47, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 8, 47, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 6, 47, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 1, 47, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 8, 47, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 4, 47, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 9, 47, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 7, 47, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 10, 48, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 8, 48, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 4, 48, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 6, 48, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 5, 48, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 6, 48, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 9, 48, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 8, 48, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 8, 48, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 1, 48, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 3, 49, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 12, 49, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 3, 49, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 8, 49, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 10, 49, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 6, 49, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 9, 49, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 5, 49, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 2, 49, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 7, 49, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 7, 50, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 11, 50, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 2, 50, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 10, 50, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 5, 50, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 8, 50, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 6, 50, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 10, 50, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 8, 50, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 9, 50, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 2, 51, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 8, 51, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 8, 51, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 5, 51, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 3, 51, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 12, 51, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 3, 51, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 9, 51, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 7, 51, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 2, 51, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 2, 52, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 6, 52, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 9, 52, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 1, 52, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 4, 52, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 12, 52, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 4, 52, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 2, 52, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 7, 52, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 11, 52, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 10, 53, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 9, 53, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 10, 53, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 3, 53, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 10, 53, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 6, 53, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 12, 53, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 9, 53, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 5, 53, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 12, 53, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 3, 54, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 6, 54, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 1, 54, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 7, 54, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 9, 54, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 12, 54, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 7, 54, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 9, 54, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 3, 54, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 6, 54, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 7, 55, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 4, 55, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 7, 55, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 5, 55, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 12, 55, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 10, 55, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 8, 55, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 1, 55, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 4, 55, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 2, 55, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 12, 56, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 12, 56, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 4, 56, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 4, 56, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 10, 56, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 12, 56, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 7, 56, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 7, 56, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 10, 56, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 9, 56, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 8, 57, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 1, 57, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 12, 57, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 10, 57, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 7, 57, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 10, 57, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 8, 57, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 9, 57, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 10, 57, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 2, 57, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 11, 58, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 3, 58, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 9, 58, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 4, 58, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 10, 58, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 2, 58, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 7, 58, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 4, 58, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 8, 58, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 8, 58, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 11, 59, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 5, 59, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 6, 59, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 11, 59, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 11, 59, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 5, 59, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 3, 59, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 4, 59, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 6, 59, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 11, 59, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 11, 60, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 2, 60, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 5, 60, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 9, 60, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 3, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 10, 60, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 7, 60, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 4, 60, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 6, 60, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 10, 60, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 3, 61, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 3, 61, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 1, 61, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 12, 61, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 2, 61, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 1, 61, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 7, 61, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 8, 61, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 5, 61, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 12, 61, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 10, 62, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 4, 62, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 9, 62, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 11, 62, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 1, 62, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 1, 62, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 10, 62, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 9, 62, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 12, 62, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 6, 62, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 11, 63, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 5, 63, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 3, 63, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 12, 63, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 7, 63, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 4, 63, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 11, 63, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 9, 63, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 1, 63, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 4, 63, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 11, 64, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 7, 64, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 7, 64, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 6, 64, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 10, 64, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 2, 64, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 1, 64, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 12, 64, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 3, 64, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 3, 64, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 12, 65, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 10, 65, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 4, 65, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 6, 65, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 4, 65, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 2, 65, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 10, 65, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 7, 65, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 4, 65, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 9, 65, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 8, 66, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 8, 66, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 10, 66, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 9, 66, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 3, 66, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 2, 66, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 4, 66, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 8, 66, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 11, 66, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 7, 66, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 9, 67, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 3, 67, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 1, 67, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 12, 67, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 11, 67, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 10, 67, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 7, 67, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 11, 67, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 1, 67, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 3, 67, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 11, 68, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 12, 68, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 12, 68, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 7, 68, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 12, 68, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 4, 68, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 12, 68, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 1, 68, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 4, 68, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 11, 68, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 8, 69, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 8, 69, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 2, 69, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 6, 69, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 7, 69, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 5, 69, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 9, 69, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 8, 69, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 5, 69, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 6, 69, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 3, 70, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 1, 70, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 3, 70, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 12, 70, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 4, 70, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 9, 70, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 3, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 7, 70, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 9, 70, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 6, 70, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 9, 71, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 7, 71, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 3, 71, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 10, 71, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 8, 71, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 9, 71, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 11, 71, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 4, 71, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 8, 71, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 8, 71, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 3, 72, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 8, 72, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 1, 72, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 9, 72, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 1, 72, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 12, 72, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 3, 72, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 4, 72, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 1, 72, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 5, 72, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 9, 73, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 7, 73, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 6, 73, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 2, 73, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 8, 73, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 9, 73, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 3, 73, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 10, 73, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 4, 73, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 10, 73, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 11, 74, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 6, 74, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 11, 74, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 8, 74, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 9, 74, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 2, 74, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 4, 74, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 10, 74, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 12, 74, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 7, 74, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 3, 75, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 12, 75, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 2, 75, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 9, 75, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 7, 75, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 2, 75, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 8, 75, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 4, 75, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 3, 75, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 3, 75, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 8, 76, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 9, 76, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 3, 76, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 5, 76, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 10, 76, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 9, 76, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 5, 76, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 5, 76, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 2, 76, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 4, 76, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 5, 77, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 4, 77, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 3, 77, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 5, 77, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 12, 77, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 10, 77, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 6, 77, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 9, 77, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 10, 77, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 10, 77, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 7, 78, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 2, 78, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 8, 78, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 1, 78, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 10, 78, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 4, 78, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 8, 78, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 2, 78, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 9, 78, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 4, 78, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 2, 79, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 5, 79, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 8, 79, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 4, 79, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 10, 79, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 8, 79, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 10, 79, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 11, 79, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 1, 79, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 8, 79, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 12, 80, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 4, 80, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 2, 80, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 8, 80, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 10, 80, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 3, 80, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 10, 80, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 12, 80, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 2, 80, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 8, 80, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 3, 81, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 11, 81, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 1, 81, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 8, 81, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 3, 81, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 11, 81, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 3, 81, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 10, 81, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 9, 81, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 3, 81, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 10, 82, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 2, 82, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 5, 82, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 1, 82, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 7, 82, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 3, 82, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 6, 82, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 12, 82, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 2, 82, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 7, 82, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 8, 83, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 6, 83, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 8, 83, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 2, 83, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 10, 83, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 10, 83, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 6, 83, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 5, 83, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 2, 83, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 7, 83, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 5, 84, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 5, 84, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 7, 84, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 11, 84, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 2, 84, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 11, 84, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 2, 84, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 2, 84, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 8, 84, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 2, 84, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 11, 85, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 7, 85, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 12, 85, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 9, 85, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 11, 85, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 11, 85, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 9, 85, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 6, 85, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 4, 85, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 12, 85, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 3, 86, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 3, 86, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 3, 86, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 10, 86, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 2, 86, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 6, 86, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 6, 86, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 5, 86, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 5, 86, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 1, 86, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 7, 87, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 3, 87, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 1, 87, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 6, 87, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 10, 87, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 10, 87, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 5, 87, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 5, 87, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 4, 87, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 3, 87, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 2, 88, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 4, 88, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 2, 88, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 11, 88, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 6, 88, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 11, 88, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 11, 88, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 8, 88, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 6, 88, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 11, 88, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 2, 89, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 12, 89, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 6, 89, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 9, 89, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 6, 89, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 8, 89, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 7, 89, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 6, 89, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 1, 89, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 7, 89, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 12, 90, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 7, 90, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 11, 90, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 4, 90, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 7, 90, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 9, 90, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 7, 90, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 1, 90, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 9, 90, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 10, 90, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 11, 91, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 11, 91, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 4, 91, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 2, 91, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 8, 91, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 4, 91, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 7, 91, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 8, 91, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 8, 91, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 4, 91, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 7, 92, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 11, 92, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 8, 92, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 3, 92, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 3, 92, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 10, 92, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 8, 92, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 8, 92, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 6, 92, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 7, 92, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 10, 93, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 2, 93, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 1, 93, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 8, 93, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 10, 93, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 8, 93, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 2, 93, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 6, 93, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 6, 93, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 11, 93, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 8, 94, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 12, 94, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 9, 94, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 10, 94, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 3, 94, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 12, 94, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 6, 94, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 9, 94, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 11, 94, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 2, 94, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 12, 95, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 2, 95, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 10, 95, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 11, 95, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 7, 95, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 12, 95, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 4, 95, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 10, 95, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 8, 95, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 10, 95, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 7, 96, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 5, 96, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 3, 96, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 11, 96, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 5, 96, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 6, 96, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 10, 96, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 4, 96, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 11, 96, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 12, 96, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 4, 97, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 6, 97, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 4, 97, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 4, 97, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 11, 97, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 1, 97, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 6, 97, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 10, 97, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 12, 97, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 4, 97, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 7, 98, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 7, 98, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 4, 98, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 1, 98, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 10, 98, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 7, 98, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 9, 98, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 3, 98, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 7, 98, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 5, 98, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 8, 99, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 6, 99, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 6, 99, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 3, 99, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 11, 99, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 5, 99, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 10, 99, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 2, 99, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 9, 99, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 4, 99, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 7, 100, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 10, 100, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 2, 100, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 6, 100, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 12, 100, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 8, 100, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 6, 100, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 4, 100, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 9, 100, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 11, 100, 2182);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------- Inserting users available instruments ---------------------------------------------------------------------------------
insert into users_available_instruments (user_id, cart_id) values (21, 373)
insert into users_available_instruments (user_id, cart_id) values (21, 277)
insert into users_available_instruments (user_id, cart_id) values (21, 224)
insert into users_available_instruments (user_id, cart_id) values (21, 209)
insert into users_available_instruments (user_id, cart_id) values (21, 823)
insert into users_available_instruments (user_id, cart_id) values (21, 967)
insert into users_available_instruments (user_id, cart_id) values (21, 747)
insert into users_available_instruments (user_id, cart_id) values (21, 1166)
insert into users_available_instruments (user_id, cart_id) values (21, 1170)
insert into users_available_instruments (user_id, cart_id) values (21, 150)
insert into users_available_instruments (user_id, cart_id) values (22, 1073)
insert into users_available_instruments (user_id, cart_id) values (22, 877)
insert into users_available_instruments (user_id, cart_id) values (22, 561)
insert into users_available_instruments (user_id, cart_id) values (22, 92)
insert into users_available_instruments (user_id, cart_id) values (22, 800)
insert into users_available_instruments (user_id, cart_id) values (22, 561)
insert into users_available_instruments (user_id, cart_id) values (22, 901)
insert into users_available_instruments (user_id, cart_id) values (22, 9)
insert into users_available_instruments (user_id, cart_id) values (22, 398)
insert into users_available_instruments (user_id, cart_id) values (22, 186)
insert into users_available_instruments (user_id, cart_id) values (23, 103)
insert into users_available_instruments (user_id, cart_id) values (23, 319)
insert into users_available_instruments (user_id, cart_id) values (23, 585)
insert into users_available_instruments (user_id, cart_id) values (23, 929)
insert into users_available_instruments (user_id, cart_id) values (23, 1022)
insert into users_available_instruments (user_id, cart_id) values (23, 1053)
insert into users_available_instruments (user_id, cart_id) values (23, 161)
insert into users_available_instruments (user_id, cart_id) values (23, 757)
insert into users_available_instruments (user_id, cart_id) values (23, 359)
insert into users_available_instruments (user_id, cart_id) values (23, 861)
insert into users_available_instruments (user_id, cart_id) values (24, 641)
insert into users_available_instruments (user_id, cart_id) values (24, 323)
insert into users_available_instruments (user_id, cart_id) values (24, 255)
insert into users_available_instruments (user_id, cart_id) values (24, 274)
insert into users_available_instruments (user_id, cart_id) values (24, 529)
insert into users_available_instruments (user_id, cart_id) values (24, 14)
insert into users_available_instruments (user_id, cart_id) values (24, 1078)
insert into users_available_instruments (user_id, cart_id) values (24, 36)
insert into users_available_instruments (user_id, cart_id) values (24, 120)
insert into users_available_instruments (user_id, cart_id) values (24, 363)
insert into users_available_instruments (user_id, cart_id) values (25, 15)
insert into users_available_instruments (user_id, cart_id) values (25, 692)
insert into users_available_instruments (user_id, cart_id) values (25, 328)
insert into users_available_instruments (user_id, cart_id) values (25, 46)
insert into users_available_instruments (user_id, cart_id) values (25, 710)
insert into users_available_instruments (user_id, cart_id) values (25, 445)
insert into users_available_instruments (user_id, cart_id) values (25, 873)
insert into users_available_instruments (user_id, cart_id) values (25, 910)
insert into users_available_instruments (user_id, cart_id) values (25, 199)
insert into users_available_instruments (user_id, cart_id) values (25, 1086)
insert into users_available_instruments (user_id, cart_id) values (26, 239)
insert into users_available_instruments (user_id, cart_id) values (26, 217)
insert into users_available_instruments (user_id, cart_id) values (26, 1083)
insert into users_available_instruments (user_id, cart_id) values (26, 616)
insert into users_available_instruments (user_id, cart_id) values (26, 1061)
insert into users_available_instruments (user_id, cart_id) values (26, 464)
insert into users_available_instruments (user_id, cart_id) values (26, 431)
insert into users_available_instruments (user_id, cart_id) values (26, 565)
insert into users_available_instruments (user_id, cart_id) values (26, 1154)
insert into users_available_instruments (user_id, cart_id) values (26, 604)
insert into users_available_instruments (user_id, cart_id) values (27, 122)
insert into users_available_instruments (user_id, cart_id) values (27, 656)
insert into users_available_instruments (user_id, cart_id) values (27, 559)
insert into users_available_instruments (user_id, cart_id) values (27, 9)
insert into users_available_instruments (user_id, cart_id) values (27, 713)
insert into users_available_instruments (user_id, cart_id) values (27, 364)
insert into users_available_instruments (user_id, cart_id) values (27, 1092)
insert into users_available_instruments (user_id, cart_id) values (27, 173)
insert into users_available_instruments (user_id, cart_id) values (27, 579)
insert into users_available_instruments (user_id, cart_id) values (27, 1166)
insert into users_available_instruments (user_id, cart_id) values (28, 1108)
insert into users_available_instruments (user_id, cart_id) values (28, 925)
insert into users_available_instruments (user_id, cart_id) values (28, 976)
insert into users_available_instruments (user_id, cart_id) values (28, 1155)
insert into users_available_instruments (user_id, cart_id) values (28, 910)
insert into users_available_instruments (user_id, cart_id) values (28, 409)
insert into users_available_instruments (user_id, cart_id) values (28, 864)
insert into users_available_instruments (user_id, cart_id) values (28, 683)
insert into users_available_instruments (user_id, cart_id) values (28, 192)
insert into users_available_instruments (user_id, cart_id) values (28, 322)
insert into users_available_instruments (user_id, cart_id) values (29, 845)
insert into users_available_instruments (user_id, cart_id) values (29, 74)
insert into users_available_instruments (user_id, cart_id) values (29, 267)
insert into users_available_instruments (user_id, cart_id) values (29, 715)
insert into users_available_instruments (user_id, cart_id) values (29, 202)
insert into users_available_instruments (user_id, cart_id) values (29, 131)
insert into users_available_instruments (user_id, cart_id) values (29, 986)
insert into users_available_instruments (user_id, cart_id) values (29, 2)
insert into users_available_instruments (user_id, cart_id) values (29, 546)
insert into users_available_instruments (user_id, cart_id) values (29, 1003)
insert into users_available_instruments (user_id, cart_id) values (30, 723)
insert into users_available_instruments (user_id, cart_id) values (30, 707)
insert into users_available_instruments (user_id, cart_id) values (30, 924)
insert into users_available_instruments (user_id, cart_id) values (30, 709)
insert into users_available_instruments (user_id, cart_id) values (30, 834)
insert into users_available_instruments (user_id, cart_id) values (30, 375)
insert into users_available_instruments (user_id, cart_id) values (30, 713)
insert into users_available_instruments (user_id, cart_id) values (30, 422)
insert into users_available_instruments (user_id, cart_id) values (30, 782)
insert into users_available_instruments (user_id, cart_id) values (30, 241)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

