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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'ICBU1', 5930.99, 15000.0, 9069.01, '2024-05-09T11:29:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'Ka6i2', 5113.99, 15000.0, 9886.01, '2024-02-11T17:14:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, '6U973', 5651.99, 15000.0, 9348.01, '2024-04-23T11:09:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, 'rXIl4', 5818.99, 15000.0, 9181.01, '2024-06-24T15:02:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'RZ8q5', 5632.99, 15000.0, 9367.01, '2024-02-19T13:21:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, 't1Bi6', 6139.99, 15000.0, 8860.01, '2024-01-10T16:50:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'ltn07', 6553.99, 15000.0, 8446.01, '2024-03-23T17:53:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'ImhX8', 6195.99, 15000.0, 8804.01, '2024-03-05T11:29:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, '3bh99', 4580.99, 15000.0, 10419.01, '2024-04-04T10:26:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, 'mOi610', 6840.99, 15000.0, 8159.01, '2024-02-22T14:07:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, '2l7E11', 5352.99, 15000.0, 9647.01, '2024-03-08T11:08:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'H1Xh12', 7083.99, 15000.0, 7916.01, '2024-03-10T16:47:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'AGi113', 4719.99, 15000.0, 10280.01, '2024-01-07T11:36:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, '4Y6914', 4943.99, 15000.0, 10056.01, '2024-05-12T12:47:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'dQzV15', 3731.99, 15000.0, 11268.01, '2024-03-03T17:25:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'eeMc16', 4266.99, 15000.0, 10733.01, '2024-04-05T14:27:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'gkG417', 5424.99, 15000.0, 9575.01, '2024-06-19T12:31:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'nVWV18', 5028.99, 15000.0, 9971.01, '2024-05-20T12:03:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'InTZ19', 4492.99, 15000.0, 10507.01, '2024-04-20T10:30:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'uQpG20', 5462.99, 15000.0, 9537.01, '2024-01-03T17:23:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'aCib21', 5719.99, 15000.0, 9280.01, '2024-03-10T17:10:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'X9yF22', 5281.99, 15000.0, 9718.01, '2024-04-21T14:15:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'tmB923', 4621.99, 15000.0, 10378.01, '2024-02-21T13:42:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'Rf5W24', 5345.99, 15000.0, 9654.01, '2024-02-27T16:19:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'zNHJ25', 6625.99, 15000.0, 8374.01, '2024-05-19T13:03:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, 'Ng2826', 5117.99, 15000.0, 9882.01, '2024-01-15T09:10:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, 'KsLv27', 6787.99, 15000.0, 8212.01, '2024-03-07T16:36:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'xdb528', 5534.99, 15000.0, 9465.01, '2024-02-09T17:48:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'gPkQ29', 5069.99, 15000.0, 9930.01, '2024-05-07T12:13:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'SthT30', 5468.99, 15000.0, 9531.01, '2024-05-10T15:40:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'S5F531', 6068.99, 15000.0, 8931.01, '2024-06-16T10:51:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'FHCi32', 4453.99, 15000.0, 10546.01, '2024-04-06T17:27:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'Tt8u33', 4637.99, 15000.0, 10362.01, '2024-03-05T11:07:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, '5Y9J34', 4895.99, 15000.0, 10104.01, '2024-03-24T14:15:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'VcoN35', 5889.99, 15000.0, 9110.01, '2024-03-21T14:08:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'bwD336', 5360.99, 15000.0, 9639.01, '2024-03-14T13:09:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, 'bLDO37', 7007.99, 15000.0, 7992.01, '2024-02-16T17:37:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'auKA38', 6501.99, 15000.0, 8498.01, '2024-02-21T15:34:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'UPt739', 5481.99, 15000.0, 9518.01, '2024-03-02T13:10:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'lwfW40', 5283.99, 15000.0, 9716.01, '2024-06-13T16:32:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, '26RF41', 5228.99, 15000.0, 9771.01, '2024-01-14T14:30:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'fykj42', 4150.99, 15000.0, 10849.01, '2024-01-25T12:10:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'O5SW43', 5865.99, 15000.0, 9134.01, '2024-02-23T10:33:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'ix8C44', 6695.99, 15000.0, 8304.01, '2024-04-05T16:33:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, '0VvW45', 4293.99, 15000.0, 10706.01, '2024-02-27T10:09:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'GmQo46', 4325.99, 15000.0, 10674.01, '2024-02-19T09:19:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, 'W6rC47', 6353.99, 15000.0, 8646.01, '2024-04-21T17:21:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'R15V48', 7208.99, 15000.0, 7791.01, '2024-04-04T14:46:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, 'FPWF49', 4613.99, 15000.0, 10386.01, '2024-01-11T11:03:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'qJz550', 6375.99, 15000.0, 8624.01, '2024-04-06T14:54:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, 'ufTT51', 6664.99, 15000.0, 8335.01, '2024-03-18T12:54:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'RzsT52', 6713.99, 15000.0, 8286.01, '2024-04-06T11:06:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, 'Izyg53', 6172.99, 15000.0, 8827.01, '2024-02-25T17:15:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'GCzI54', 6438.99, 15000.0, 8561.01, '2024-03-04T17:34:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'On9N55', 5893.99, 15000.0, 9106.01, '2024-05-18T11:30:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'AuxC56', 5264.99, 15000.0, 9735.01, '2024-04-19T17:40:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'YT0e57', 5261.99, 15000.0, 9738.01, '2024-03-26T17:12:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'PUc558', 6892.99, 15000.0, 8107.01, '2024-03-22T17:20:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'azkD59', 4657.99, 15000.0, 10342.01, '2024-01-03T17:12:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'UdiV60', 6488.99, 15000.0, 8511.01, '2024-05-01T17:05:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, 'ozEA61', 4695.99, 15000.0, 10304.01, '2024-02-22T17:02:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'eNtt62', 4440.99, 15000.0, 10559.01, '2024-01-04T12:49:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, 'bEp263', 4096.99, 15000.0, 10903.01, '2024-01-23T10:47:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, 'u8rl64', 6258.99, 15000.0, 8741.01, '2024-06-03T10:06:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'il2065', 5410.99, 15000.0, 9589.01, '2024-04-24T11:35:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'KJYi66', 4535.99, 15000.0, 10464.01, '2024-03-04T16:51:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'Ezhh67', 5414.99, 15000.0, 9585.01, '2024-02-11T11:26:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, 'X7pN68', 6126.99, 15000.0, 8873.01, '2024-02-26T10:45:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'BHjf69', 5464.99, 15000.0, 9535.01, '2024-04-21T17:04:55');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, '8pmB70', 5672.99, 15000.0, 9327.01, '2024-04-25T16:19:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, 'HhSl71', 5818.99, 15000.0, 9181.01, '2024-02-21T13:15:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'S3vg72', 4334.99, 15000.0, 10665.01, '2024-01-25T15:25:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'vu8o73', 5527.99, 15000.0, 9472.01, '2024-02-07T14:10:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'z6U174', 6127.99, 15000.0, 8872.01, '2024-03-25T16:14:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'PLs375', 5623.99, 15000.0, 9376.01, '2024-02-12T11:33:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, 'dR5V76', 5951.99, 15000.0, 9048.01, '2024-04-12T15:52:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, 'zTfR77', 5563.99, 15000.0, 9436.01, '2024-04-17T12:55:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'DVyB78', 6299.99, 15000.0, 8700.01, '2024-05-21T12:36:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, 'GqAB79', 5431.99, 15000.0, 9568.01, '2024-01-17T15:43:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, '7JLU80', 5686.99, 15000.0, 9313.01, '2024-03-20T15:08:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, '8wAB81', 5391.99, 15000.0, 9608.01, '2024-03-05T11:18:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, 'qh6c82', 4654.99, 15000.0, 10345.01, '2024-04-09T09:33:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, '5ODd83', 4901.99, 15000.0, 10098.01, '2024-02-14T10:50:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 'Oj8o84', 4981.99, 15000.0, 10018.01, '2024-04-20T16:27:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'L2Ti85', 4271.99, 15000.0, 10728.01, '2024-01-26T11:43:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'Go5A86', 6012.99, 15000.0, 8987.01, '2024-05-02T12:25:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'vzHp87', 6406.99, 15000.0, 8593.01, '2024-04-27T14:45:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'D79T88', 4769.99, 15000.0, 10230.01, '2024-02-05T10:02:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, 'uakb89', 5364.99, 15000.0, 9635.01, '2024-01-07T13:28:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'XB6Y90', 6305.99, 15000.0, 8694.01, '2024-05-27T13:41:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'L2SK91', 6042.99, 15000.0, 8957.01, '2024-04-10T10:47:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, '5E3P92', 3858.99, 15000.0, 11141.01, '2024-02-19T12:26:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'dO1j93', 6399.99, 15000.0, 8600.01, '2024-05-10T16:45:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'OXKy94', 6228.99, 15000.0, 8771.01, '2024-03-09T14:40:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'ZLWO95', 4135.99, 15000.0, 10864.01, '2024-02-24T17:15:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'mxvB96', 6360.99, 15000.0, 8639.01, '2024-05-26T14:37:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'okfv97', 5450.99, 15000.0, 9549.01, '2024-01-02T16:33:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, 'Jeb698', 5576.99, 15000.0, 9423.01, '2024-04-18T15:24:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, 'hYJ699', 5374.99, 15000.0, 9625.01, '2024-04-07T15:40:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'UhRc100', 6954.99, 15000.0, 8045.01, '2024-04-07T11:25:30');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 2, 1, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 9, 1, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 5, 1, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 9, 1, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 8, 1, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 1, 1, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 8, 1, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 5, 1, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 11, 1, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 6, 1, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 11, 2, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 2, 2, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 8, 2, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 2, 2, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 10, 2, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 5, 2, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 10, 2, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 5, 2, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 4, 2, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 4, 2, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 9, 3, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 2, 3, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 1, 3, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 12, 3, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 11, 3, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 10, 3, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 2, 3, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 8, 3, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 12, 3, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 2, 3, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 8, 4, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 1, 4, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 2, 4, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 11, 4, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 9, 4, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 5, 4, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 2, 4, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 1, 4, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 10, 4, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 1, 4, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 5, 5, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 12, 5, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 3, 5, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 12, 5, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 5, 5, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 11, 5, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 2, 5, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 8, 5, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 9, 5, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 8, 5, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 12, 6, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 8, 6, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 3, 6, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 9, 6, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 3, 6, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 11, 6, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 10, 6, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 11, 6, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 8, 6, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 4, 6, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 4, 7, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 7, 7, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 3, 7, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 10, 7, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 8, 7, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 9, 7, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 3, 7, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 3, 7, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 6, 7, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 5, 7, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 2, 8, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 1, 8, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 4, 8, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 10, 8, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 5, 8, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 3, 8, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 5, 8, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 8, 8, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 7, 8, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 5, 8, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 6, 9, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 4, 9, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 7, 9, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 5, 9, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 5, 9, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 7, 9, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 2, 9, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 4, 9, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 8, 9, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 7, 9, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 5, 10, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 6, 10, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 3, 10, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 6, 10, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 7, 10, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 12, 10, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 7, 10, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 3, 10, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 9, 10, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 6, 10, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 7, 11, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 3, 11, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 7, 11, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 5, 11, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 2, 11, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 6, 11, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 2, 11, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 9, 11, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 8, 11, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 10, 11, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 10, 12, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 12, 12, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 4, 12, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 4, 12, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 10, 12, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 2, 12, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 12, 12, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 1, 12, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 9, 12, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 6, 12, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 2, 13, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 11, 13, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 5, 13, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 1, 13, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 5, 13, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 4, 13, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 10, 13, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 3, 13, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 12, 13, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 5, 13, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 8, 14, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 8, 14, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 4, 14, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 12, 14, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 8, 14, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 5, 14, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 2, 14, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 9, 14, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 7, 14, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 5, 14, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 11, 15, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 1, 15, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 2, 15, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 2, 15, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 7, 15, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 7, 15, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 8, 15, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 4, 15, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 11, 15, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 2, 15, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 12, 16, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 8, 16, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 10, 16, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 3, 16, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 11, 16, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 9, 16, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 4, 16, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 11, 16, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 7, 16, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 9, 16, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 2, 17, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 4, 17, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 2, 17, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 10, 17, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 3, 17, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 12, 17, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 4, 17, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 4, 17, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 2, 17, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 6, 17, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 7, 18, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 7, 18, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 2, 18, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 11, 18, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 8, 18, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 1, 18, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 2, 18, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 5, 18, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 5, 18, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 8, 18, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 8, 19, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 11, 19, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 11, 19, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 8, 19, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 11, 19, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 5, 19, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 4, 19, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 12, 19, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 10, 19, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 1, 19, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 2, 20, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 6, 20, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 11, 20, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 3, 20, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 9, 20, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 5, 20, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 7, 20, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 12, 20, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 10, 20, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 12, 20, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 9, 21, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 12, 21, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 3, 21, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 1, 21, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 4, 21, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 10, 21, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 2, 21, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 10, 21, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 9, 21, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 12, 21, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 12, 22, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 6, 22, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 11, 22, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 8, 22, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 4, 22, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 10, 22, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 12, 22, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 11, 22, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 11, 22, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 9, 22, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 4, 23, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 12, 23, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 11, 23, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 10, 23, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 9, 23, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 9, 23, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 6, 23, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 12, 23, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 6, 23, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 7, 23, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 7, 24, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 11, 24, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 10, 24, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 4, 24, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 10, 24, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 2, 24, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 2, 24, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 2, 24, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 3, 24, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 7, 24, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 4, 25, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 1, 25, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 10, 25, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 3, 25, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 8, 25, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 12, 25, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 7, 25, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 9, 25, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 12, 25, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 5, 25, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 5, 26, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 6, 26, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 6, 26, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 3, 26, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 11, 26, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 7, 26, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 4, 26, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 7, 26, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 6, 26, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 7, 26, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 8, 27, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 2, 27, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 3, 27, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 10, 27, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 8, 27, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 9, 27, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 10, 27, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 8, 27, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 12, 27, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 6, 27, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 9, 28, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 12, 28, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 12, 28, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 10, 28, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 4, 28, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 11, 28, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 11, 28, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 11, 28, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 3, 28, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 11, 28, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 11, 29, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 4, 29, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 4, 29, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 6, 29, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 11, 29, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 4, 29, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 8, 29, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 2, 29, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 8, 29, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 1, 29, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 10, 30, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 9, 30, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 11, 30, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 8, 30, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 5, 30, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 11, 30, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 2, 30, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 1, 30, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 1, 30, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 9, 30, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 5, 31, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 5, 31, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 4, 31, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 9, 31, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 5, 31, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 12, 31, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 12, 31, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 7, 31, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 6, 31, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 7, 31, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 2, 32, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 10, 32, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 12, 32, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 7, 32, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 7, 32, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 12, 32, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 4, 32, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 10, 32, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 10, 32, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 10, 32, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 2, 33, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 4, 33, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 11, 33, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 5, 33, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 6, 33, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 4, 33, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 7, 33, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 9, 33, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 12, 33, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 7, 33, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 3, 34, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 3, 34, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 10, 34, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 9, 34, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 3, 34, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 3, 34, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 11, 34, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 10, 34, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 4, 34, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 8, 34, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 10, 35, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 7, 35, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 10, 35, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 12, 35, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 11, 35, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 8, 35, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 2, 35, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 11, 35, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 1, 35, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 5, 35, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 4, 36, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 6, 36, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 6, 36, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 8, 36, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 5, 36, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 12, 36, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 8, 36, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 3, 36, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 10, 36, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 3, 36, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 9, 37, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 4, 37, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 11, 37, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 8, 37, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 3, 37, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 3, 37, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 9, 37, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 2, 37, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 2, 37, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 6, 37, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 6, 38, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 7, 38, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 6, 38, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 12, 38, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 6, 38, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 5, 38, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 11, 38, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 2, 38, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 3, 38, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 4, 38, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 6, 39, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 11, 39, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 11, 39, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 2, 39, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 7, 39, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 1, 39, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 8, 39, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 12, 39, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 8, 39, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 6, 39, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 12, 40, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 12, 40, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 2, 40, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 6, 40, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 8, 40, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 5, 40, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 5, 40, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 3, 40, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 2, 40, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 4, 40, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 8, 41, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 11, 41, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 5, 41, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 11, 41, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 2, 41, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 4, 41, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 2, 41, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 11, 41, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 3, 41, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 9, 41, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 3, 42, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 2, 42, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 10, 42, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 11, 42, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 10, 42, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 2, 42, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 9, 42, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 10, 42, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 7, 42, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 10, 42, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 10, 43, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 3, 43, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 2, 43, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 2, 43, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 12, 43, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 6, 43, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 8, 43, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 9, 43, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 8, 43, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 11, 43, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 11, 44, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 3, 44, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 5, 44, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 7, 44, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 7, 44, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 8, 44, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 6, 44, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 3, 44, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 12, 44, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 11, 44, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 11, 45, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 7, 45, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 7, 45, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 4, 45, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 6, 45, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 10, 45, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 8, 45, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 5, 45, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 5, 45, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 8, 45, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 7, 46, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 4, 46, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 7, 46, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 1, 46, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 4, 46, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 7, 46, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 5, 46, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 2, 46, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 4, 46, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 5, 46, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 11, 47, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 11, 47, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 5, 47, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 8, 47, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 10, 47, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 12, 47, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 9, 47, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 12, 47, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 5, 47, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 12, 47, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 3, 48, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 6, 48, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 10, 48, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 5, 48, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 2, 48, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 4, 48, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 11, 48, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 6, 48, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 11, 48, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 11, 48, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 11, 49, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 6, 49, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 2, 49, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 7, 49, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 7, 49, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 5, 49, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 9, 49, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 3, 49, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 11, 49, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 11, 49, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 1, 50, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 7, 50, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 2, 50, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 11, 50, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 12, 50, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 4, 50, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 2, 50, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 12, 50, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 3, 50, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 12, 50, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 2, 51, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 11, 51, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 11, 51, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 12, 51, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 11, 51, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 8, 51, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 10, 51, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 4, 51, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 10, 51, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 8, 51, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 2, 52, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 8, 52, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 2, 52, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 3, 52, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 6, 52, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 11, 52, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 6, 52, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 7, 52, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 8, 52, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 6, 52, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 8, 53, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 10, 53, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 9, 53, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 5, 53, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 7, 53, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 6, 53, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 6, 53, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 4, 53, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 5, 53, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 7, 53, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 2, 54, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 8, 54, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 12, 54, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 6, 54, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 5, 54, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 4, 54, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 2, 54, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 4, 54, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 3, 54, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 12, 54, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 5, 55, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 8, 55, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 2, 55, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 3, 55, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 6, 55, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 8, 55, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 2, 55, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 7, 55, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 12, 55, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 4, 55, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 9, 56, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 10, 56, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 2, 56, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 11, 56, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 5, 56, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 7, 56, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 7, 56, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 12, 56, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 10, 56, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 3, 56, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 8, 57, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 11, 57, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 6, 57, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 7, 57, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 3, 57, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 10, 57, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 7, 57, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 12, 57, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 6, 57, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 11, 57, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 2, 58, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 11, 58, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 2, 58, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 9, 58, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 11, 58, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 10, 58, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 10, 58, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 10, 58, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 3, 58, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 9, 58, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 3, 59, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 8, 59, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 2, 59, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 11, 59, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 6, 59, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 6, 59, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 3, 59, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 2, 59, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 11, 59, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 7, 59, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 4, 60, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 2, 60, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 8, 60, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 2, 60, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 1, 60, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 6, 60, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 5, 60, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 7, 60, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 11, 60, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 5, 60, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 3, 61, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 12, 61, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 7, 61, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 6, 61, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 1, 61, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 6, 61, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 7, 61, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 11, 61, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 1, 61, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 4, 61, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 10, 62, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 1, 62, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 8, 62, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 12, 62, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 10, 62, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 12, 62, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 12, 62, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 2, 62, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 3, 62, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 8, 62, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 8, 63, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 6, 63, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 9, 63, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 4, 63, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 2, 63, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 3, 63, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 3, 63, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 2, 63, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 12, 63, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 1, 63, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 11, 64, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 6, 64, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 11, 64, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 6, 64, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 7, 64, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 3, 64, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 8, 64, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 5, 64, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 10, 64, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 10, 64, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 10, 65, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 9, 65, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 7, 65, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 10, 65, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 2, 65, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 8, 65, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 11, 65, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 5, 65, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 5, 65, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 5, 65, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 8, 66, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 8, 66, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 6, 66, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 11, 66, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 2, 66, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 9, 66, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 11, 66, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 11, 66, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 10, 66, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 2, 66, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 3, 67, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 11, 67, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 7, 67, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 5, 67, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 9, 67, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 2, 67, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 3, 67, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 6, 67, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 2, 67, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 3, 67, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 3, 68, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 11, 68, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 4, 68, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 8, 68, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 7, 68, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 7, 68, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 3, 68, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 11, 68, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 8, 68, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 12, 68, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 9, 69, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 1, 69, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 10, 69, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 12, 69, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 8, 69, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 2, 69, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 7, 69, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 4, 69, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 12, 69, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 7, 69, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 8, 70, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 4, 70, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 8, 70, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 1, 70, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 9, 70, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 6, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 7, 70, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 12, 70, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 12, 70, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 5, 70, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 7, 71, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 8, 71, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 4, 71, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 12, 71, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 4, 71, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 7, 71, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 7, 71, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 5, 71, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 11, 71, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 7, 71, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 1, 72, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 5, 72, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 2, 72, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 4, 72, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 3, 72, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 8, 72, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 4, 72, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 3, 72, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 5, 72, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 11, 72, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 2, 73, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 10, 73, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 1, 73, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 2, 73, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 6, 73, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 3, 73, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 1, 73, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 12, 73, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 2, 73, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 8, 73, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 7, 74, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 3, 74, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 4, 74, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 11, 74, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 1, 74, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 6, 74, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 10, 74, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 11, 74, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 4, 74, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 2, 74, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 1, 75, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 7, 75, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 3, 75, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 12, 75, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 5, 75, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 7, 75, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 8, 75, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 3, 75, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 12, 75, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 1, 75, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 3, 76, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 2, 76, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 8, 76, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 1, 76, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 7, 76, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 3, 76, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 8, 76, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 7, 76, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 5, 76, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 10, 76, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 3, 77, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 12, 77, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 5, 77, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 11, 77, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 4, 77, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 5, 77, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 7, 77, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 5, 77, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 1, 77, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 10, 77, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 5, 78, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 10, 78, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 12, 78, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 5, 78, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 4, 78, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 3, 78, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 8, 78, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 5, 78, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 10, 78, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 12, 78, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 1, 79, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 7, 79, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 6, 79, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 6, 79, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 8, 79, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 5, 79, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 8, 79, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 5, 79, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 7, 79, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 11, 79, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 9, 80, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 10, 80, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 11, 80, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 3, 80, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 5, 80, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 12, 80, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 5, 80, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 12, 80, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 8, 80, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 4, 80, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 7, 81, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 7, 81, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 11, 81, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 7, 81, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 2, 81, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 2, 81, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 7, 81, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 7, 81, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 3, 81, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 8, 81, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 4, 82, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 5, 82, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 3, 82, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 12, 82, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 11, 82, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 10, 82, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 7, 82, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 4, 82, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 2, 82, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 4, 82, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 6, 83, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 7, 83, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 9, 83, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 10, 83, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 2, 83, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 9, 83, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 9, 83, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 6, 83, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 12, 83, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 4, 83, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 8, 84, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 6, 84, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 10, 84, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 9, 84, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 10, 84, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 2, 84, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 7, 84, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 3, 84, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 9, 84, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 6, 84, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 11, 85, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 3, 85, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 2, 85, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 11, 85, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 9, 85, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 8, 85, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 5, 85, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 7, 85, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 6, 85, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 9, 85, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 12, 86, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 8, 86, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 8, 86, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 2, 86, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 3, 86, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 3, 86, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 9, 86, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 1, 86, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 4, 86, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 10, 86, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 10, 87, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 4, 87, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 9, 87, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 7, 87, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 4, 87, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 5, 87, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 1, 87, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 4, 87, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 3, 87, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 2, 87, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 3, 88, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 5, 88, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 7, 88, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 8, 88, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 11, 88, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 5, 88, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 5, 88, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 9, 88, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 10, 88, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 5, 88, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 3, 89, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 6, 89, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 2, 89, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 7, 89, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 6, 89, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 6, 89, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 4, 89, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 5, 89, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 11, 89, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 3, 89, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 10, 90, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 12, 90, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 11, 90, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 2, 90, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 10, 90, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 7, 90, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 12, 90, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 11, 90, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 8, 90, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 7, 90, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 10, 91, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 10, 91, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 9, 91, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 9, 91, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 7, 91, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 11, 91, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 3, 91, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 4, 91, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 5, 91, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 7, 91, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 2, 92, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 8, 92, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 11, 92, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 8, 92, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 5, 92, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 10, 92, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 9, 92, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 7, 92, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 2, 92, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 4, 92, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 3, 93, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 11, 93, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 12, 93, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 10, 93, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 10, 93, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 6, 93, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 5, 93, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 9, 93, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 10, 93, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 8, 93, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 12, 94, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 3, 94, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 11, 94, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 8, 94, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 8, 94, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 8, 94, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 10, 94, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 11, 94, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 5, 94, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 4, 94, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 2, 95, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 10, 95, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 4, 95, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 11, 95, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 6, 95, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 10, 95, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 2, 95, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 5, 95, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 9, 95, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 1, 95, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 4, 96, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 6, 96, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 12, 96, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 6, 96, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 5, 96, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 11, 96, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 6, 96, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 1, 96, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 4, 96, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 11, 96, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 9, 97, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 4, 97, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 3, 97, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 3, 97, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 11, 97, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 2, 97, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 2, 97, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 9, 97, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 8, 97, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 8, 97, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 9, 98, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 12, 98, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 11, 98, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 12, 98, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 6, 98, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 2, 98, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 6, 98, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 6, 98, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 7, 98, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 11, 98, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 2, 99, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 2, 99, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 9, 99, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 3, 99, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 4, 99, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 11, 99, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 5, 99, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 4, 99, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 3, 99, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 9, 99, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 9, 100, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 1, 100, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 5, 100, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 12, 100, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 10, 100, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 6, 100, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 10, 100, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 11, 100, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 5, 100, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 7, 100, 2113);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ Carts -------------------------------------------------------------------------------------------------
insert into carts (potential_customer_id, available_instrument_id) values (21, 269)
insert into carts (potential_customer_id, available_instrument_id) values (21, 442)
insert into carts (potential_customer_id, available_instrument_id) values (21, 156)
insert into carts (potential_customer_id, available_instrument_id) values (21, 434)
insert into carts (potential_customer_id, available_instrument_id) values (21, 1023)
insert into carts (potential_customer_id, available_instrument_id) values (21, 563)
insert into carts (potential_customer_id, available_instrument_id) values (21, 797)
insert into carts (potential_customer_id, available_instrument_id) values (21, 371)
insert into carts (potential_customer_id, available_instrument_id) values (21, 32)
insert into carts (potential_customer_id, available_instrument_id) values (21, 27)
insert into carts (potential_customer_id, available_instrument_id) values (22, 777)
insert into carts (potential_customer_id, available_instrument_id) values (22, 396)
insert into carts (potential_customer_id, available_instrument_id) values (22, 16)
insert into carts (potential_customer_id, available_instrument_id) values (22, 980)
insert into carts (potential_customer_id, available_instrument_id) values (22, 238)
insert into carts (potential_customer_id, available_instrument_id) values (22, 221)
insert into carts (potential_customer_id, available_instrument_id) values (22, 770)
insert into carts (potential_customer_id, available_instrument_id) values (22, 813)
insert into carts (potential_customer_id, available_instrument_id) values (22, 1103)
insert into carts (potential_customer_id, available_instrument_id) values (22, 914)
insert into carts (potential_customer_id, available_instrument_id) values (23, 831)
insert into carts (potential_customer_id, available_instrument_id) values (23, 422)
insert into carts (potential_customer_id, available_instrument_id) values (23, 41)
insert into carts (potential_customer_id, available_instrument_id) values (23, 972)
insert into carts (potential_customer_id, available_instrument_id) values (23, 1065)
insert into carts (potential_customer_id, available_instrument_id) values (23, 562)
insert into carts (potential_customer_id, available_instrument_id) values (23, 581)
insert into carts (potential_customer_id, available_instrument_id) values (23, 902)
insert into carts (potential_customer_id, available_instrument_id) values (23, 638)
insert into carts (potential_customer_id, available_instrument_id) values (23, 1031)
insert into carts (potential_customer_id, available_instrument_id) values (24, 790)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1014)
insert into carts (potential_customer_id, available_instrument_id) values (24, 115)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1110)
insert into carts (potential_customer_id, available_instrument_id) values (24, 51)
insert into carts (potential_customer_id, available_instrument_id) values (24, 658)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1165)
insert into carts (potential_customer_id, available_instrument_id) values (24, 213)
insert into carts (potential_customer_id, available_instrument_id) values (24, 290)
insert into carts (potential_customer_id, available_instrument_id) values (24, 122)
insert into carts (potential_customer_id, available_instrument_id) values (25, 480)
insert into carts (potential_customer_id, available_instrument_id) values (25, 757)
insert into carts (potential_customer_id, available_instrument_id) values (25, 1145)
insert into carts (potential_customer_id, available_instrument_id) values (25, 451)
insert into carts (potential_customer_id, available_instrument_id) values (25, 355)
insert into carts (potential_customer_id, available_instrument_id) values (25, 290)
insert into carts (potential_customer_id, available_instrument_id) values (25, 725)
insert into carts (potential_customer_id, available_instrument_id) values (25, 62)
insert into carts (potential_customer_id, available_instrument_id) values (25, 1095)
insert into carts (potential_customer_id, available_instrument_id) values (25, 170)
insert into carts (potential_customer_id, available_instrument_id) values (26, 324)
insert into carts (potential_customer_id, available_instrument_id) values (26, 887)
insert into carts (potential_customer_id, available_instrument_id) values (26, 1069)
insert into carts (potential_customer_id, available_instrument_id) values (26, 1058)
insert into carts (potential_customer_id, available_instrument_id) values (26, 7)
insert into carts (potential_customer_id, available_instrument_id) values (26, 572)
insert into carts (potential_customer_id, available_instrument_id) values (26, 944)
insert into carts (potential_customer_id, available_instrument_id) values (26, 770)
insert into carts (potential_customer_id, available_instrument_id) values (26, 650)
insert into carts (potential_customer_id, available_instrument_id) values (26, 860)
insert into carts (potential_customer_id, available_instrument_id) values (27, 1018)
insert into carts (potential_customer_id, available_instrument_id) values (27, 526)
insert into carts (potential_customer_id, available_instrument_id) values (27, 1169)
insert into carts (potential_customer_id, available_instrument_id) values (27, 1047)
insert into carts (potential_customer_id, available_instrument_id) values (27, 659)
insert into carts (potential_customer_id, available_instrument_id) values (27, 645)
insert into carts (potential_customer_id, available_instrument_id) values (27, 621)
insert into carts (potential_customer_id, available_instrument_id) values (27, 812)
insert into carts (potential_customer_id, available_instrument_id) values (27, 127)
insert into carts (potential_customer_id, available_instrument_id) values (27, 323)
insert into carts (potential_customer_id, available_instrument_id) values (28, 725)
insert into carts (potential_customer_id, available_instrument_id) values (28, 22)
insert into carts (potential_customer_id, available_instrument_id) values (28, 1157)
insert into carts (potential_customer_id, available_instrument_id) values (28, 744)
insert into carts (potential_customer_id, available_instrument_id) values (28, 576)
insert into carts (potential_customer_id, available_instrument_id) values (28, 851)
insert into carts (potential_customer_id, available_instrument_id) values (28, 625)
insert into carts (potential_customer_id, available_instrument_id) values (28, 965)
insert into carts (potential_customer_id, available_instrument_id) values (28, 84)
insert into carts (potential_customer_id, available_instrument_id) values (28, 637)
insert into carts (potential_customer_id, available_instrument_id) values (29, 318)
insert into carts (potential_customer_id, available_instrument_id) values (29, 977)
insert into carts (potential_customer_id, available_instrument_id) values (29, 442)
insert into carts (potential_customer_id, available_instrument_id) values (29, 1118)
insert into carts (potential_customer_id, available_instrument_id) values (29, 390)
insert into carts (potential_customer_id, available_instrument_id) values (29, 1126)
insert into carts (potential_customer_id, available_instrument_id) values (29, 721)
insert into carts (potential_customer_id, available_instrument_id) values (29, 811)
insert into carts (potential_customer_id, available_instrument_id) values (29, 517)
insert into carts (potential_customer_id, available_instrument_id) values (29, 638)
insert into carts (potential_customer_id, available_instrument_id) values (30, 1109)
insert into carts (potential_customer_id, available_instrument_id) values (30, 557)
insert into carts (potential_customer_id, available_instrument_id) values (30, 252)
insert into carts (potential_customer_id, available_instrument_id) values (30, 1006)
insert into carts (potential_customer_id, available_instrument_id) values (30, 749)
insert into carts (potential_customer_id, available_instrument_id) values (30, 1103)
insert into carts (potential_customer_id, available_instrument_id) values (30, 372)
insert into carts (potential_customer_id, available_instrument_id) values (30, 410)
insert into carts (potential_customer_id, available_instrument_id) values (30, 689)
insert into carts (potential_customer_id, available_instrument_id) values (30, 906)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

