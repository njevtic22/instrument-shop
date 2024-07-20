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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'zwWc1', 5045.99, 15000.0, 9954.01, '2024-02-07T09:52:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'gz3E2', 5716.99, 15000.0, 9283.01, '2024-02-22T17:54:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, 'Clcx3', 5759.99, 15000.0, 9240.01, '2024-04-17T14:17:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, 'pbrf4', 5488.99, 15000.0, 9511.01, '2024-03-22T12:17:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'fbZK5', 4869.99, 15000.0, 10130.01, '2024-05-17T12:14:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, 'xuQi6', 5388.99, 15000.0, 9611.01, '2024-02-17T14:17:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'hpmV7', 4533.99, 15000.0, 10466.01, '2024-06-11T16:25:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'Tq9f8', 5699.99, 15000.0, 9300.01, '2024-04-03T13:36:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, 'Ufj19', 5789.99, 15000.0, 9210.01, '2024-05-16T13:55:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, 'mgzv10', 6585.99, 15000.0, 8414.01, '2024-02-23T15:26:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, 'YkVq11', 6715.99, 15000.0, 8284.01, '2024-04-20T17:25:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'nkIW12', 6287.99, 15000.0, 8712.01, '2024-02-04T17:16:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, '7Tmv13', 6368.99, 15000.0, 8631.01, '2024-06-05T14:16:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'foGD14', 5192.99, 15000.0, 9807.01, '2024-05-27T17:47:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'ymtH15', 6340.99, 15000.0, 8659.01, '2024-03-20T15:51:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'iVTp16', 6584.99, 15000.0, 8415.01, '2024-05-08T17:55:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, '101917', 5504.99, 15000.0, 9495.01, '2024-03-21T10:20:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'D7lt18', 5044.99, 15000.0, 9955.01, '2024-03-16T12:11:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'Xnvx19', 5335.99, 15000.0, 9664.01, '2024-05-19T13:21:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'Vkay20', 5727.99, 15000.0, 9272.01, '2024-04-04T12:13:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'KJv921', 5477.99, 15000.0, 9522.01, '2024-05-08T16:19:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'xHMB22', 6190.99, 15000.0, 8809.01, '2024-06-08T09:26:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'PBGJ23', 5785.99, 15000.0, 9214.01, '2024-05-07T13:20:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'BYvW24', 5818.99, 15000.0, 9181.01, '2024-05-21T11:49:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'zBrU25', 5922.99, 15000.0, 9077.01, '2024-03-12T09:15:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, '9kW226', 5669.99, 15000.0, 9330.01, '2024-05-24T16:09:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, 'CKZ927', 6551.99, 15000.0, 8448.01, '2024-03-12T10:36:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, '5EK628', 5400.99, 15000.0, 9599.01, '2024-04-02T16:20:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'Atom29', 6243.99, 15000.0, 8756.01, '2024-02-24T14:54:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'xmxc30', 6062.99, 15000.0, 8937.01, '2024-04-12T13:17:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'B7zP31', 4827.99, 15000.0, 10172.01, '2024-03-17T15:24:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'Legn32', 5399.99, 15000.0, 9600.01, '2024-05-03T15:23:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'RPzG33', 5160.99, 15000.0, 9839.01, '2024-02-24T13:45:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, 'aICe34', 6656.99, 15000.0, 8343.01, '2024-03-26T17:15:01');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'CfSA35', 5037.99, 15000.0, 9962.01, '2024-06-02T11:28:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'VCsK36', 6331.99, 15000.0, 8668.01, '2024-03-23T17:50:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, '0cDp37', 5558.99, 15000.0, 9441.01, '2024-02-17T14:34:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, '3ibS38', 5569.99, 15000.0, 9430.01, '2024-05-20T17:51:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'G73939', 5564.99, 15000.0, 9435.01, '2024-04-26T13:09:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'DBkp40', 5106.99, 15000.0, 9893.01, '2024-02-10T09:31:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, 'mOBK41', 6321.99, 15000.0, 8678.01, '2024-06-23T12:28:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'Ydrh42', 5768.99, 15000.0, 9231.01, '2024-02-07T12:29:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'K23I43', 5389.99, 15000.0, 9610.01, '2024-03-03T09:34:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'E1Ic44', 5062.99, 15000.0, 9937.01, '2024-06-20T15:12:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, 'oonW45', 4972.99, 15000.0, 10027.01, '2024-02-23T14:06:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, '5Rv146', 6283.99, 15000.0, 8716.01, '2024-01-16T14:27:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, 'JguS47', 4592.99, 15000.0, 10407.01, '2024-05-09T10:38:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'xjPN48', 5750.99, 15000.0, 9249.01, '2024-04-09T17:12:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, 'Didu49', 5094.99, 15000.0, 9905.01, '2024-02-05T13:37:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'BcgJ50', 4649.99, 15000.0, 10350.01, '2024-03-02T11:29:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, '7FPS51', 5785.99, 15000.0, 9214.01, '2024-05-03T14:41:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'NsdG52', 6310.99, 15000.0, 8689.01, '2024-04-10T13:05:08');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, 'Z2FP53', 5588.99, 15000.0, 9411.01, '2024-04-24T12:37:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'FIeW54', 6200.99, 15000.0, 8799.01, '2024-02-03T17:15:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'VCYa55', 6921.99, 15000.0, 8078.01, '2024-03-06T12:21:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'OF3556', 5801.99, 15000.0, 9198.01, '2024-06-13T14:29:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'hGdu57', 6157.99, 15000.0, 8842.01, '2024-02-15T15:14:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'nekW58', 5614.99, 15000.0, 9385.01, '2024-02-08T15:38:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'UTcU59', 5313.99, 15000.0, 9686.01, '2024-02-09T13:46:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, '2xSi60', 5289.99, 15000.0, 9710.01, '2024-01-18T09:26:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, 'caTw61', 3681.99, 15000.0, 11318.01, '2024-01-22T11:22:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'h8IS62', 5311.99, 15000.0, 9688.01, '2024-05-10T13:32:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, 'BkwJ63', 5510.99, 15000.0, 9489.01, '2024-05-27T09:30:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, 'pzIc64', 6317.99, 15000.0, 8682.01, '2024-04-10T17:13:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'j8P165', 5858.99, 15000.0, 9141.01, '2024-04-20T14:49:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, '2Rv866', 4026.99, 15000.0, 10973.01, '2024-04-15T11:24:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'oCwA67', 5539.99, 15000.0, 9460.01, '2024-04-04T12:44:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, '0L7d68', 5903.99, 15000.0, 9096.01, '2024-04-04T15:16:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'YdZV69', 4997.99, 15000.0, 10002.01, '2024-02-17T17:49:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, 'JOdo70', 5402.99, 15000.0, 9597.01, '2024-05-19T16:18:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, '5er071', 5861.99, 15000.0, 9138.01, '2024-05-19T17:51:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'Gtk372', 6119.99, 15000.0, 8880.01, '2024-05-25T16:15:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'mdXr73', 4847.99, 15000.0, 10152.01, '2024-01-23T12:12:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'OMcV74', 5042.99, 15000.0, 9957.01, '2024-04-26T11:09:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'tK1775', 3792.99, 15000.0, 11207.01, '2024-06-26T17:36:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, '1qCg76', 6607.99, 15000.0, 8392.01, '2024-02-18T17:53:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, '3uyv77', 6014.99, 15000.0, 8985.01, '2024-02-09T12:48:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'BZiN78', 6176.99, 15000.0, 8823.01, '2024-03-25T15:05:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, 'xMar79', 5673.99, 15000.0, 9326.01, '2024-05-27T13:48:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, 'uKcw80', 5799.99, 15000.0, 9200.01, '2024-03-12T15:01:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, 'tKk681', 5886.99, 15000.0, 9113.01, '2024-04-01T13:17:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, '4QW382', 5363.99, 15000.0, 9636.01, '2024-05-17T14:02:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, 'W3Xh83', 6602.99, 15000.0, 8397.01, '2024-04-14T09:49:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 's20i84', 5914.99, 15000.0, 9085.01, '2024-05-04T11:25:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'B9AN85', 5311.99, 15000.0, 9688.01, '2024-04-14T13:40:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'c6S586', 5268.99, 15000.0, 9731.01, '2024-05-24T17:46:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'yaUW87', 5118.99, 15000.0, 9881.01, '2024-02-05T15:43:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'VM9O88', 6742.99, 15000.0, 8257.01, '2024-01-24T11:13:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, 'Mf3S89', 5093.99, 15000.0, 9906.01, '2024-02-01T14:53:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'Jyx490', 5904.99, 15000.0, 9095.01, '2024-05-01T17:25:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'X5Oo91', 4865.99, 15000.0, 10134.01, '2024-01-06T13:09:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'zW0R92', 6324.99, 15000.0, 8675.01, '2024-02-02T14:06:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'NMBp93', 5330.99, 15000.0, 9669.01, '2024-02-19T16:46:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'QJxu94', 4866.99, 15000.0, 10133.01, '2024-05-18T17:50:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'BX7j95', 5288.99, 15000.0, 9711.01, '2024-05-22T15:10:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'Tyte96', 6808.99, 15000.0, 8191.01, '2024-03-06T15:03:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'yyZo97', 4970.99, 15000.0, 10029.01, '2024-01-25T17:10:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, 'Nz9U98', 3888.99, 15000.0, 11111.01, '2024-03-27T15:36:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, 'VVyT99', 5411.99, 15000.0, 9588.01, '2024-02-16T16:43:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'l59I100', 6218.99, 15000.0, 8781.01, '2024-04-12T11:09:29');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 5, 1, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 11, 1, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 5, 1, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 5, 1, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 7, 1, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 8, 1, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 2, 1, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 3, 1, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 5, 1, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 10, 1, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 9, 2, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 3, 2, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 1, 2, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 2, 2, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 6, 2, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 5, 2, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 6, 2, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 8, 2, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 11, 2, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 11, 2, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 6, 3, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 5, 3, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 5, 3, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 5, 3, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 11, 3, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 5, 3, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 2, 3, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 3, 3, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 5, 3, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 11, 3, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 4, 4, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 9, 4, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 10, 4, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 12, 4, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 10, 4, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 3, 4, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 6, 4, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 5, 4, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 7, 4, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 1, 4, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 10, 5, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 9, 5, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 9, 5, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 4, 5, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 6, 5, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 11, 5, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 9, 5, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 12, 5, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 8, 5, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 7, 5, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 10, 6, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 10, 6, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 12, 6, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 3, 6, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 8, 6, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 7, 6, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 12, 6, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 10, 6, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 3, 6, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 9, 6, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 9, 7, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 9, 7, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 7, 7, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 6, 7, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 7, 7, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 9, 7, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 3, 7, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 11, 7, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 10, 7, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 10, 7, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 3, 8, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 10, 8, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 5, 8, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 3, 8, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 10, 8, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 10, 8, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 8, 8, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 2, 8, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 10, 8, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 11, 8, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 11, 9, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 6, 9, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 2, 9, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 8, 9, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 11, 9, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 3, 9, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 4, 9, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 4, 9, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 1, 9, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 9, 9, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 11, 10, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 4, 10, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 8, 10, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 6, 10, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 4, 10, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 12, 10, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 10, 10, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 1, 10, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 7, 10, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 6, 10, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 9, 11, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 10, 11, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 6, 11, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 10, 11, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 1, 11, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 4, 11, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 2, 11, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 12, 11, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 10, 11, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 7, 11, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 8, 12, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 6, 12, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 2, 12, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 2, 12, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 6, 12, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 9, 12, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 3, 12, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 3, 12, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 5, 12, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 8, 12, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 8, 13, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 4, 13, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 10, 13, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 9, 13, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 2, 13, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 7, 13, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 8, 13, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 10, 13, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 6, 13, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 6, 13, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 11, 14, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 12, 14, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 7, 14, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 5, 14, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 4, 14, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 11, 14, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 2, 14, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 12, 14, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 6, 14, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 7, 14, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 12, 15, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 5, 15, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 9, 15, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 3, 15, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 2, 15, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 1, 15, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 11, 15, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 9, 15, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 4, 15, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 4, 15, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 9, 16, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 11, 16, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 6, 16, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 6, 16, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 6, 16, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 5, 16, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 2, 16, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 4, 16, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 6, 16, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 3, 16, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 3, 17, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 6, 17, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 10, 17, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 9, 17, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 4, 17, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 5, 17, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 3, 17, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 6, 17, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 7, 17, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 11, 17, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 12, 18, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 4, 18, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 2, 18, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 3, 18, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 9, 18, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 11, 18, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 5, 18, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 9, 18, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 9, 18, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 7, 18, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 4, 19, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 2, 19, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 7, 19, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 1, 19, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 4, 19, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 12, 19, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 2, 19, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 11, 19, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 5, 19, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 7, 19, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 2, 20, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 7, 20, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 6, 20, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 4, 20, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 1, 20, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 6, 20, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 8, 20, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 5, 20, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 11, 20, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 5, 20, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 11, 21, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 2, 21, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 9, 21, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 3, 21, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 11, 21, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 11, 21, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 10, 21, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 5, 21, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 3, 21, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 11, 21, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 11, 22, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 9, 22, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 4, 22, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 11, 22, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 7, 22, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 9, 22, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 5, 22, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 2, 22, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 9, 22, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 12, 22, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 1, 23, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 3, 23, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 8, 23, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 7, 23, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 9, 23, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 5, 23, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 11, 23, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 3, 23, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 6, 23, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 10, 23, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 3, 24, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 8, 24, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 8, 24, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 6, 24, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 8, 24, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 1, 24, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 7, 24, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 6, 24, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 9, 24, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 4, 24, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 11, 25, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 8, 25, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 8, 25, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 9, 25, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 6, 25, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 11, 25, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 5, 25, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 12, 25, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 6, 25, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 10, 25, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 8, 26, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 10, 26, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 11, 26, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 10, 26, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 12, 26, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 4, 26, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 7, 26, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 12, 26, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 4, 26, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 8, 26, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 6, 27, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 6, 27, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 7, 27, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 4, 27, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 11, 27, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 7, 27, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 3, 27, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 2, 27, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 7, 27, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 6, 27, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 4, 28, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 9, 28, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 12, 28, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 11, 28, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 2, 28, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 3, 28, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 2, 28, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 4, 28, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 12, 28, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 2, 28, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 12, 29, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 2, 29, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 7, 29, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 2, 29, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 10, 29, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 12, 29, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 6, 29, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 4, 29, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 10, 29, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 10, 29, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 10, 30, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 5, 30, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 6, 30, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 10, 30, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 8, 30, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 10, 30, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 10, 30, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 8, 30, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 4, 30, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 7, 30, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 6, 31, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 9, 31, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 12, 31, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 6, 31, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 1, 31, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 7, 31, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 8, 31, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 10, 31, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 4, 31, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 9, 31, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 9, 32, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 12, 32, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 1, 32, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 6, 32, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 4, 32, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 2, 32, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 10, 32, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 11, 32, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 12, 32, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 8, 32, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 12, 33, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 4, 33, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 6, 33, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 8, 33, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 1, 33, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 10, 33, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 1, 33, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 6, 33, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 5, 33, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 2, 33, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 9, 34, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 2, 34, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 10, 34, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 11, 34, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 11, 34, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 12, 34, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 8, 34, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 1, 34, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 6, 34, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 7, 34, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 6, 35, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 9, 35, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 3, 35, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 9, 35, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 2, 35, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 3, 35, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 1, 35, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 3, 35, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 2, 35, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 9, 35, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 12, 36, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 10, 36, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 4, 36, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 10, 36, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 10, 36, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 12, 36, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 7, 36, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 3, 36, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 4, 36, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 2, 36, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 4, 37, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 10, 37, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 4, 37, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 6, 37, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 12, 37, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 5, 37, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 6, 37, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 3, 37, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 5, 37, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 1, 37, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 7, 38, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 11, 38, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 9, 38, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 5, 38, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 9, 38, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 3, 38, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 9, 38, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 4, 38, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 4, 38, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 5, 38, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 3, 39, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 7, 39, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 7, 39, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 2, 39, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 4, 39, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 2, 39, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 4, 39, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 10, 39, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 8, 39, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 5, 39, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 3, 40, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 9, 40, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 8, 40, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 9, 40, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 8, 40, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 11, 40, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 12, 40, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 5, 40, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 6, 40, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 4, 40, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 6, 41, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 11, 41, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 10, 41, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 4, 41, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 11, 41, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 9, 41, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 12, 41, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 11, 41, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 8, 41, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 2, 41, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 11, 42, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 8, 42, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 7, 42, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 12, 42, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 5, 42, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 9, 42, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 12, 42, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 11, 42, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 8, 42, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 4, 42, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 1, 43, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 4, 43, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 10, 43, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 12, 43, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 2, 43, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 10, 43, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 9, 43, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 3, 43, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 11, 43, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 11, 43, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 6, 44, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 5, 44, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 10, 44, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 11, 44, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 5, 44, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 9, 44, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 8, 44, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 11, 44, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 3, 44, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 3, 44, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 8, 45, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 2, 45, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 12, 45, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 7, 45, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 12, 45, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 1, 45, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 5, 45, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 1, 45, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 2, 45, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 3, 45, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 1, 46, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 8, 46, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 6, 46, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 6, 46, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 1, 46, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 7, 46, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 9, 46, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 12, 46, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 6, 46, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 9, 46, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 12, 47, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 11, 47, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 8, 47, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 6, 47, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 2, 47, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 3, 47, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 4, 47, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 2, 47, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 8, 47, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 6, 47, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 11, 48, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 2, 48, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 6, 48, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 9, 48, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 1, 48, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 6, 48, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 2, 48, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 2, 48, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 9, 48, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 11, 48, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 3, 49, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 11, 49, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 3, 49, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 10, 49, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 6, 49, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 12, 49, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 10, 49, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 3, 49, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 8, 49, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 11, 49, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 7, 50, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 8, 50, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 5, 50, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 9, 50, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 11, 50, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 3, 50, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 1, 50, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 2, 50, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 9, 50, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 2, 50, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 7, 51, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 5, 51, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 12, 51, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 10, 51, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 10, 51, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 6, 51, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 9, 51, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 10, 51, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 9, 51, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 5, 51, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 5, 52, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 9, 52, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 6, 52, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 9, 52, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 7, 52, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 11, 52, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 6, 52, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 6, 52, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 5, 52, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 10, 52, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 8, 53, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 11, 53, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 5, 53, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 3, 53, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 2, 53, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 2, 53, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 2, 53, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 10, 53, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 2, 53, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 8, 53, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 8, 54, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 12, 54, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 7, 54, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 6, 54, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 4, 54, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 8, 54, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 1, 54, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 9, 54, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 7, 54, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 9, 54, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 1, 55, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 3, 55, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 10, 55, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 6, 55, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 6, 55, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 12, 55, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 8, 55, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 9, 55, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 4, 55, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 3, 55, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 10, 56, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 3, 56, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 4, 56, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 7, 56, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 3, 56, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 1, 56, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 7, 56, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 11, 56, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 9, 56, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 7, 56, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 3, 57, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 12, 57, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 9, 57, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 3, 57, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 10, 57, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 7, 57, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 2, 57, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 11, 57, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 4, 57, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 2, 57, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 9, 58, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 4, 58, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 9, 58, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 8, 58, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 1, 58, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 4, 58, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 10, 58, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 10, 58, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 6, 58, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 2, 58, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 12, 59, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 2, 59, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 12, 59, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 11, 59, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 11, 59, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 3, 59, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 7, 59, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 8, 59, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 7, 59, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 12, 59, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 12, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 1, 60, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 10, 60, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 9, 60, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 7, 60, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 3, 60, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 6, 60, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 10, 60, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 2, 60, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 10, 60, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 12, 61, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 7, 61, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 4, 61, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 1, 61, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 7, 61, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 2, 61, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 2, 61, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 10, 61, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 3, 61, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 2, 61, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 1, 62, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 2, 62, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 7, 62, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 3, 62, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 3, 62, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 4, 62, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 2, 62, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 9, 62, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 9, 62, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 5, 62, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 5, 63, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 7, 63, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 8, 63, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 10, 63, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 2, 63, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 4, 63, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 2, 63, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 8, 63, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 4, 63, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 8, 63, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 7, 64, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 11, 64, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 11, 64, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 11, 64, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 6, 64, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 10, 64, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 1, 64, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 5, 64, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 3, 64, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 5, 64, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 2, 65, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 2, 65, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 8, 65, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 7, 65, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 9, 65, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 7, 65, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 2, 65, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 7, 65, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 12, 65, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 2, 65, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 1, 66, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 8, 66, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 11, 66, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 12, 66, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 9, 66, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 7, 66, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 6, 66, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 8, 66, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 6, 66, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 10, 66, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 4, 67, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 5, 67, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 5, 67, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 4, 67, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 8, 67, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 4, 67, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 4, 67, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 9, 67, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 3, 67, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 6, 67, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 5, 68, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 10, 68, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 11, 68, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 9, 68, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 3, 68, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 12, 68, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 9, 68, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 11, 68, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 11, 68, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 3, 68, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 9, 69, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 5, 69, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 5, 69, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 1, 69, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 11, 69, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 2, 69, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 6, 69, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 3, 69, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 9, 69, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 5, 69, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 11, 70, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 8, 70, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 10, 70, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 3, 70, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 6, 70, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 2, 70, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 10, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 8, 70, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 6, 70, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 7, 70, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 8, 71, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 5, 71, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 4, 71, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 12, 71, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 6, 71, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 9, 71, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 11, 71, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 4, 71, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 3, 71, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 5, 71, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 10, 72, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 6, 72, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 3, 72, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 7, 72, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 5, 72, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 9, 72, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 1, 72, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 8, 72, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 8, 72, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 4, 72, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 9, 73, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 10, 73, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 6, 73, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 2, 73, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 10, 73, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 5, 73, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 11, 73, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 7, 73, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 9, 73, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 7, 73, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 2, 74, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 8, 74, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 2, 74, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 7, 74, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 10, 74, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 2, 74, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 4, 74, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 3, 74, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 2, 74, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 6, 74, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 12, 75, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 3, 75, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 1, 75, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 4, 75, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 4, 75, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 4, 75, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 7, 75, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 3, 75, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 7, 75, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 9, 75, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 7, 76, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 7, 76, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 2, 76, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 1, 76, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 10, 76, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 2, 76, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 10, 76, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 4, 76, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 6, 76, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 3, 76, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 5, 77, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 4, 77, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 6, 77, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 10, 77, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 5, 77, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 10, 77, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 10, 77, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 6, 77, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 11, 77, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 5, 77, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 3, 78, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 7, 78, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 2, 78, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 2, 78, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 9, 78, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 8, 78, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 11, 78, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 11, 78, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 3, 78, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 5, 78, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 12, 79, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 6, 79, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 2, 79, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 2, 79, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 4, 79, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 6, 79, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 7, 79, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 11, 79, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 3, 79, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 6, 79, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 1, 80, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 3, 80, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 11, 80, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 1, 80, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 6, 80, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 5, 80, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 4, 80, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 9, 80, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 9, 80, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 9, 80, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 9, 81, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 9, 81, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 1, 81, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 6, 81, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 2, 81, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 4, 81, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 8, 81, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 11, 81, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 8, 81, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 4, 81, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 11, 82, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 7, 82, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 2, 82, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 11, 82, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 5, 82, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 5, 82, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 11, 82, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 6, 82, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 4, 82, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 12, 82, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 9, 83, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 4, 83, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 7, 83, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 9, 83, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 12, 83, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 12, 83, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 12, 83, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 11, 83, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 8, 83, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 11, 83, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 11, 84, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 2, 84, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 8, 84, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 6, 84, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 1, 84, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 2, 84, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 8, 84, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 11, 84, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 10, 84, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 10, 84, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 12, 85, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 9, 85, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 6, 85, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 6, 85, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 11, 85, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 5, 85, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 5, 85, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 2, 85, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 2, 85, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 4, 85, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 12, 86, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 3, 86, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 10, 86, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 6, 86, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 4, 86, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 5, 86, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 9, 86, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 6, 86, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 11, 86, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 12, 86, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 5, 87, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 4, 87, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 11, 87, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 7, 87, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 5, 87, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 10, 87, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 5, 87, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 10, 87, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 12, 87, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 8, 87, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 6, 88, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 11, 88, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 1, 88, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 9, 88, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 5, 88, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 12, 88, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 7, 88, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 9, 88, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 11, 88, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 9, 88, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 8, 89, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 6, 89, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 11, 89, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 6, 89, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 11, 89, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 11, 89, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 2, 89, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 3, 89, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 10, 89, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 7, 89, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 5, 90, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 11, 90, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 11, 90, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 6, 90, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 3, 90, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 3, 90, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 4, 90, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 6, 90, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 6, 90, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 11, 90, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 9, 91, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 7, 91, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 4, 91, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 11, 91, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 10, 91, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 3, 91, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 4, 91, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 11, 91, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 10, 91, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 6, 91, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 10, 92, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 1, 92, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 2, 92, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 6, 92, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 11, 92, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 2, 92, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 2, 92, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 10, 92, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 2, 92, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 12, 92, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 10, 93, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 2, 93, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 4, 93, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 2, 93, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 11, 93, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 1, 93, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 6, 93, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 4, 93, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 11, 93, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 12, 93, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 12, 94, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 4, 94, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 9, 94, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 5, 94, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 12, 94, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 8, 94, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 7, 94, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 6, 94, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 10, 94, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 6, 94, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 5, 95, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 9, 95, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 3, 95, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 3, 95, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 1, 95, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 2, 95, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 4, 95, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 9, 95, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 12, 95, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 3, 95, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 2, 96, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 12, 96, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 1, 96, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 9, 96, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 5, 96, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 6, 96, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 6, 96, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 7, 96, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 9, 96, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 10, 96, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 9, 97, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 3, 97, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 8, 97, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 3, 97, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 10, 97, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 2, 97, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 11, 97, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 12, 97, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 3, 97, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 7, 97, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 3, 98, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 3, 98, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 9, 98, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 2, 98, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 7, 98, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 12, 98, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 5, 98, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 5, 98, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 4, 98, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 7, 98, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 8, 99, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 5, 99, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 11, 99, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 10, 99, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 2, 99, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 4, 99, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 2, 99, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 8, 99, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 2, 99, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 11, 99, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 10, 100, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 8, 100, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 8, 100, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 10, 100, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 10, 100, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 3, 100, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 6, 100, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 5, 100, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 6, 100, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 11, 100, 2180);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------- Inserting users available instruments ---------------------------------------------------------------------------------
insert into users_available_instruments (user_id, cart_id) values (21, 1141)
insert into users_available_instruments (user_id, cart_id) values (21, 685)
insert into users_available_instruments (user_id, cart_id) values (21, 1135)
insert into users_available_instruments (user_id, cart_id) values (21, 409)
insert into users_available_instruments (user_id, cart_id) values (21, 996)
insert into users_available_instruments (user_id, cart_id) values (21, 421)
insert into users_available_instruments (user_id, cart_id) values (21, 341)
insert into users_available_instruments (user_id, cart_id) values (21, 59)
insert into users_available_instruments (user_id, cart_id) values (21, 999)
insert into users_available_instruments (user_id, cart_id) values (21, 612)
insert into users_available_instruments (user_id, cart_id) values (22, 1170)
insert into users_available_instruments (user_id, cart_id) values (22, 404)
insert into users_available_instruments (user_id, cart_id) values (22, 1044)
insert into users_available_instruments (user_id, cart_id) values (22, 423)
insert into users_available_instruments (user_id, cart_id) values (22, 812)
insert into users_available_instruments (user_id, cart_id) values (22, 385)
insert into users_available_instruments (user_id, cart_id) values (22, 127)
insert into users_available_instruments (user_id, cart_id) values (22, 559)
insert into users_available_instruments (user_id, cart_id) values (22, 723)
insert into users_available_instruments (user_id, cart_id) values (22, 467)
insert into users_available_instruments (user_id, cart_id) values (23, 896)
insert into users_available_instruments (user_id, cart_id) values (23, 413)
insert into users_available_instruments (user_id, cart_id) values (23, 88)
insert into users_available_instruments (user_id, cart_id) values (23, 683)
insert into users_available_instruments (user_id, cart_id) values (23, 568)
insert into users_available_instruments (user_id, cart_id) values (23, 148)
insert into users_available_instruments (user_id, cart_id) values (23, 450)
insert into users_available_instruments (user_id, cart_id) values (23, 127)
insert into users_available_instruments (user_id, cart_id) values (23, 209)
insert into users_available_instruments (user_id, cart_id) values (23, 548)
insert into users_available_instruments (user_id, cart_id) values (24, 255)
insert into users_available_instruments (user_id, cart_id) values (24, 1168)
insert into users_available_instruments (user_id, cart_id) values (24, 20)
insert into users_available_instruments (user_id, cart_id) values (24, 1001)
insert into users_available_instruments (user_id, cart_id) values (24, 1027)
insert into users_available_instruments (user_id, cart_id) values (24, 1132)
insert into users_available_instruments (user_id, cart_id) values (24, 700)
insert into users_available_instruments (user_id, cart_id) values (24, 363)
insert into users_available_instruments (user_id, cart_id) values (24, 1008)
insert into users_available_instruments (user_id, cart_id) values (24, 146)
insert into users_available_instruments (user_id, cart_id) values (25, 1055)
insert into users_available_instruments (user_id, cart_id) values (25, 94)
insert into users_available_instruments (user_id, cart_id) values (25, 430)
insert into users_available_instruments (user_id, cart_id) values (25, 1175)
insert into users_available_instruments (user_id, cart_id) values (25, 870)
insert into users_available_instruments (user_id, cart_id) values (25, 430)
insert into users_available_instruments (user_id, cart_id) values (25, 57)
insert into users_available_instruments (user_id, cart_id) values (25, 567)
insert into users_available_instruments (user_id, cart_id) values (25, 831)
insert into users_available_instruments (user_id, cart_id) values (25, 813)
insert into users_available_instruments (user_id, cart_id) values (26, 95)
insert into users_available_instruments (user_id, cart_id) values (26, 664)
insert into users_available_instruments (user_id, cart_id) values (26, 15)
insert into users_available_instruments (user_id, cart_id) values (26, 217)
insert into users_available_instruments (user_id, cart_id) values (26, 149)
insert into users_available_instruments (user_id, cart_id) values (26, 104)
insert into users_available_instruments (user_id, cart_id) values (26, 35)
insert into users_available_instruments (user_id, cart_id) values (26, 1142)
insert into users_available_instruments (user_id, cart_id) values (26, 655)
insert into users_available_instruments (user_id, cart_id) values (26, 952)
insert into users_available_instruments (user_id, cart_id) values (27, 1046)
insert into users_available_instruments (user_id, cart_id) values (27, 937)
insert into users_available_instruments (user_id, cart_id) values (27, 361)
insert into users_available_instruments (user_id, cart_id) values (27, 284)
insert into users_available_instruments (user_id, cart_id) values (27, 150)
insert into users_available_instruments (user_id, cart_id) values (27, 172)
insert into users_available_instruments (user_id, cart_id) values (27, 325)
insert into users_available_instruments (user_id, cart_id) values (27, 791)
insert into users_available_instruments (user_id, cart_id) values (27, 425)
insert into users_available_instruments (user_id, cart_id) values (27, 509)
insert into users_available_instruments (user_id, cart_id) values (28, 141)
insert into users_available_instruments (user_id, cart_id) values (28, 541)
insert into users_available_instruments (user_id, cart_id) values (28, 636)
insert into users_available_instruments (user_id, cart_id) values (28, 763)
insert into users_available_instruments (user_id, cart_id) values (28, 449)
insert into users_available_instruments (user_id, cart_id) values (28, 203)
insert into users_available_instruments (user_id, cart_id) values (28, 463)
insert into users_available_instruments (user_id, cart_id) values (28, 674)
insert into users_available_instruments (user_id, cart_id) values (28, 578)
insert into users_available_instruments (user_id, cart_id) values (28, 89)
insert into users_available_instruments (user_id, cart_id) values (29, 527)
insert into users_available_instruments (user_id, cart_id) values (29, 806)
insert into users_available_instruments (user_id, cart_id) values (29, 165)
insert into users_available_instruments (user_id, cart_id) values (29, 855)
insert into users_available_instruments (user_id, cart_id) values (29, 767)
insert into users_available_instruments (user_id, cart_id) values (29, 1172)
insert into users_available_instruments (user_id, cart_id) values (29, 221)
insert into users_available_instruments (user_id, cart_id) values (29, 579)
insert into users_available_instruments (user_id, cart_id) values (29, 670)
insert into users_available_instruments (user_id, cart_id) values (29, 513)
insert into users_available_instruments (user_id, cart_id) values (30, 440)
insert into users_available_instruments (user_id, cart_id) values (30, 851)
insert into users_available_instruments (user_id, cart_id) values (30, 2)
insert into users_available_instruments (user_id, cart_id) values (30, 112)
insert into users_available_instruments (user_id, cart_id) values (30, 752)
insert into users_available_instruments (user_id, cart_id) values (30, 239)
insert into users_available_instruments (user_id, cart_id) values (30, 799)
insert into users_available_instruments (user_id, cart_id) values (30, 677)
insert into users_available_instruments (user_id, cart_id) values (30, 962)
insert into users_available_instruments (user_id, cart_id) values (30, 655)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

