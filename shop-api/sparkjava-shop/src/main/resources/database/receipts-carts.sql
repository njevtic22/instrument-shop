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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'uhzW1', 5976.99, 15000.0, 9023.01, '2024-04-16T05:55:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'NvC72', 4315.99, 15000.0, 10684.01, '2024-01-23T07:18:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, 'u4f33', 6128.99, 15000.0, 8871.01, '2024-04-26T07:38:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, 'VBjX4', 5719.99, 15000.0, 9280.01, '2024-02-21T07:14:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'iZyw5', 5109.99, 15000.0, 9890.01, '2024-02-09T07:42:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, 'onLX6', 5465.99, 15000.0, 9534.01, '2024-03-12T05:10:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'huIP7', 5149.99, 15000.0, 9850.01, '2024-03-25T07:20:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'nnyQ8', 5510.99, 15000.0, 9489.01, '2024-02-24T08:36:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, 'udck9', 6259.99, 15000.0, 8740.01, '2024-04-02T07:28:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, 'F3sU10', 6374.99, 15000.0, 8625.01, '2024-04-13T07:38:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, '5YRq11', 5915.99, 15000.0, 9084.01, '2024-02-01T08:26:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'FrGo12', 5912.99, 15000.0, 9087.01, '2024-04-08T07:19:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'f22O13', 4331.99, 15000.0, 10668.01, '2024-04-16T07:51:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'ii8H14', 5837.99, 15000.0, 9162.01, '2024-04-06T07:38:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'Q7WB15', 3998.99, 15000.0, 11001.01, '2024-04-10T07:29:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, '6P7I16', 5466.99, 15000.0, 9533.01, '2024-04-14T05:16:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'jbrn17', 5253.99, 15000.0, 9746.01, '2024-02-14T05:52:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'lREM18', 4512.99, 15000.0, 10487.01, '2024-02-24T07:08:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'kM2h19', 5560.99, 15000.0, 9439.01, '2024-04-25T05:44:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'J84D20', 4999.99, 15000.0, 10000.01, '2024-04-06T07:24:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, 'jK2i21', 4454.99, 15000.0, 10545.01, '2024-03-21T07:49:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'acQG22', 5361.99, 15000.0, 9638.01, '2024-01-01T05:34:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, 'XZVp23', 6182.99, 15000.0, 8817.01, '2024-04-09T05:15:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'jcbM24', 5188.99, 15000.0, 9811.01, '2024-03-25T07:44:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'N51r25', 5270.99, 15000.0, 9729.01, '2024-02-04T07:32:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, 'B9H026', 3736.99, 15000.0, 11263.01, '2024-02-14T05:26:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, 'ymA727', 6488.99, 15000.0, 8511.01, '2024-04-25T07:52:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'oJlR28', 3667.99, 15000.0, 11332.01, '2024-01-06T05:52:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'kKIa29', 6706.99, 15000.0, 8293.01, '2024-04-06T05:44:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'uUDT30', 5630.99, 15000.0, 9369.01, '2024-03-03T07:13:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, '5Lrd31', 4726.99, 15000.0, 10273.01, '2024-03-27T05:41:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'sRfP32', 4316.99, 15000.0, 10683.01, '2024-04-06T05:06:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'VjPi33', 4873.99, 15000.0, 10126.01, '2024-02-05T08:23:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, '94uD34', 4969.99, 15000.0, 10030.01, '2024-03-15T07:48:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'YbH535', 4816.99, 15000.0, 10183.01, '2024-04-13T07:49:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'i5Sm36', 5252.99, 15000.0, 9747.01, '2024-03-22T07:27:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, 'c8Hz37', 5662.99, 15000.0, 9337.01, '2024-04-23T07:40:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'Yf1338', 6214.99, 15000.0, 8785.01, '2024-03-16T05:20:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'Lrke39', 4982.99, 15000.0, 10017.01, '2024-04-27T05:17:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'ERBG40', 5362.99, 15000.0, 9637.01, '2024-04-27T07:23:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, 'lAvL41', 5816.99, 15000.0, 9183.01, '2024-02-26T05:31:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'LhHG42', 5044.99, 15000.0, 9955.01, '2024-04-07T07:27:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'TwkP43', 3797.99, 15000.0, 11202.01, '2024-03-19T07:30:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'HoqS44', 5348.99, 15000.0, 9651.01, '2024-03-20T05:44:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, '0eJf45', 4010.99, 15000.0, 10989.01, '2024-02-06T07:09:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'gFEd46', 5450.99, 15000.0, 9549.01, '2024-04-26T08:31:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, '34Dw47', 4950.99, 15000.0, 10049.01, '2024-03-08T07:10:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, 'htbH48', 6764.99, 15000.0, 8235.01, '2024-04-04T08:51:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, '48HW49', 5329.99, 15000.0, 9670.01, '2024-04-03T07:16:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'LzKX50', 4444.99, 15000.0, 10555.01, '2024-04-11T07:04:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, 'qJud51', 5885.99, 15000.0, 9114.01, '2024-01-17T07:21:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'Z7bh52', 4669.99, 15000.0, 10330.01, '2024-03-23T07:53:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, 'vYmE53', 4694.99, 15000.0, 10305.01, '2024-03-12T05:52:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'gFhk54', 5227.99, 15000.0, 9772.01, '2024-04-11T07:11:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'EknO55', 5824.99, 15000.0, 9175.01, '2024-01-15T07:53:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'Yyzb56', 3956.99, 15000.0, 11043.01, '2024-02-17T05:20:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'KXSF57', 6222.99, 15000.0, 8777.01, '2024-02-06T05:03:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'bbkI58', 6346.99, 15000.0, 8653.01, '2024-02-12T07:33:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'e7PB59', 5228.99, 15000.0, 9771.01, '2024-03-22T05:53:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'APT560', 4343.99, 15000.0, 10656.01, '2024-04-04T07:03:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, 'GASL61', 4922.99, 15000.0, 10077.01, '2024-03-19T07:12:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'uWyY62', 5465.99, 15000.0, 9534.01, '2024-04-22T08:07:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, '65CA63', 5512.99, 15000.0, 9487.01, '2024-03-05T07:34:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, '7Yvx64', 4741.99, 15000.0, 10258.01, '2024-01-16T07:48:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'MCdJ65', 6035.99, 15000.0, 8964.01, '2024-04-02T07:29:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'oTml66', 5542.99, 15000.0, 9457.01, '2024-01-04T05:49:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'oWR167', 5794.99, 15000.0, 9205.01, '2024-03-17T08:52:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, '4j1W68', 5224.99, 15000.0, 9775.01, '2024-01-03T08:40:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, 'S6DS69', 7199.99, 15000.0, 7800.01, '2024-02-05T07:37:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, '7rKa70', 5846.99, 15000.0, 9153.01, '2024-01-18T05:09:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, '2BQM71', 5401.99, 15000.0, 9598.01, '2024-02-26T07:08:43');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'ZU1L72', 5041.99, 15000.0, 9958.01, '2024-04-19T05:45:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'CWyu73', 6291.99, 15000.0, 8708.01, '2024-01-25T08:06:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'RkEN74', 5020.99, 15000.0, 9979.01, '2024-01-17T07:14:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, 'J1Yt75', 5122.99, 15000.0, 9877.01, '2024-04-07T05:43:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, 'rUu276', 5231.99, 15000.0, 9768.01, '2024-02-26T07:40:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, '9Olb77', 6128.99, 15000.0, 8871.01, '2024-04-21T07:33:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'a52h78', 5205.99, 15000.0, 9794.01, '2024-03-02T07:13:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, '2aGM79', 6002.99, 15000.0, 8997.01, '2024-02-02T05:28:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, '4RGg80', 6496.99, 15000.0, 8503.01, '2024-04-09T05:07:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, '45b481', 5600.99, 15000.0, 9399.01, '2024-03-11T05:14:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, 'QZTw82', 5558.99, 15000.0, 9441.01, '2024-02-06T07:06:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, '2sPt83', 6678.99, 15000.0, 8321.01, '2024-01-17T07:26:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 'F12p84', 4688.99, 15000.0, 10311.01, '2024-03-27T05:10:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'SRQO85', 5131.99, 15000.0, 9868.01, '2024-01-08T07:03:27');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'jsMP86', 6435.99, 15000.0, 8564.01, '2024-01-05T07:39:02');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'Jn9O87', 6068.99, 15000.0, 8931.01, '2024-03-22T07:49:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'l0fL88', 6484.99, 15000.0, 8515.01, '2024-04-04T07:26:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, 'FWG489', 6056.99, 15000.0, 8943.01, '2024-01-12T07:37:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'iTq090', 5869.99, 15000.0, 9130.01, '2024-02-07T07:19:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'CWxI91', 4664.99, 15000.0, 10335.01, '2024-02-03T07:09:16');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'IGev92', 3973.99, 15000.0, 11026.01, '2024-02-10T07:15:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'FNQZ93', 5590.99, 15000.0, 9409.01, '2024-04-10T05:21:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'N3nL94', 4516.99, 15000.0, 10483.01, '2024-02-18T05:28:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'UqRD95', 4665.99, 15000.0, 10334.01, '2024-02-21T05:02:19');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'C84m96', 4746.99, 15000.0, 10253.01, '2024-04-11T07:30:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, '3MII97', 4751.99, 15000.0, 10248.01, '2024-03-20T08:37:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, '1zj698', 6100.99, 15000.0, 8899.01, '2024-02-17T05:37:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, '6egQ99', 6277.99, 15000.0, 8722.01, '2024-03-12T05:14:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'vqbg100', 5087.99, 15000.0, 9912.01, '2024-04-11T07:52:31');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 2, 1, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 10, 1, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 4, 1, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 3, 1, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 7, 1, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 12, 1, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 1, 1, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 10, 1, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 9, 1, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 6, 1, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 10, 2, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 3, 2, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 3, 2, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 1, 2, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 4, 2, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 1, 2, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 1, 2, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 7, 2, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 6, 2, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 3, 2, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 2, 3, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 4, 3, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 7, 3, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 12, 3, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 5, 3, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 5, 3, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 1, 3, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 1, 3, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 9, 3, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 8, 3, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 9, 4, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 10, 4, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 3, 4, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 12, 4, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 4, 4, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 8, 4, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 9, 4, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 3, 4, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 4, 4, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 7, 4, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 9, 5, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 5, 5, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 2, 5, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 9, 5, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 9, 5, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 1, 5, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 4, 5, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 4, 5, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 9, 5, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 9, 5, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 11, 6, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 12, 6, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 11, 6, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 8, 6, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 8, 6, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 8, 6, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 12, 6, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 11, 6, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 2, 6, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 6, 6, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 5, 7, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 2, 7, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 10, 7, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 10, 7, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 2, 7, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 4, 7, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 3, 7, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 7, 7, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 3, 7, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 7, 7, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 3, 8, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 5, 8, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 4, 8, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 7, 8, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 2, 8, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 7, 8, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 5, 8, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 5, 8, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 10, 8, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 5, 8, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 10, 9, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 6, 9, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 11, 9, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 6, 9, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 10, 9, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 10, 9, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 1, 9, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 5, 9, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 9, 9, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 9, 9, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 2, 10, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 1, 10, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 11, 10, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 10, 10, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 6, 10, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 2, 10, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 5, 10, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 4, 10, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 4, 10, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 9, 10, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 11, 11, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 10, 11, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 3, 11, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 8, 11, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 8, 11, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 11, 11, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 9, 11, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 12, 11, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 10, 11, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 5, 11, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 7, 12, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 7, 12, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 8, 12, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 10, 12, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 3, 12, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 3, 12, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 6, 12, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 11, 12, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 1, 12, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 6, 12, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 9, 13, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 11, 13, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 11, 13, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 6, 13, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 3, 13, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 8, 13, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 10, 13, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 6, 13, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 9, 13, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 11, 13, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 9, 14, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 9, 14, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 4, 14, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 9, 14, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 9, 14, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 3, 14, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 8, 14, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 9, 14, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 4, 14, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 7, 14, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 7, 15, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 2, 15, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 6, 15, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 5, 15, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 4, 15, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 5, 15, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 6, 15, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 9, 15, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 9, 15, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 8, 15, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 11, 16, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 8, 16, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 5, 16, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 5, 16, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 3, 16, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 5, 16, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 8, 16, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 11, 16, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 5, 16, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 7, 16, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 4, 17, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 8, 17, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 5, 17, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 6, 17, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 9, 17, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 2, 17, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 5, 17, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 10, 17, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 8, 17, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 11, 17, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 8, 18, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 8, 18, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 7, 18, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 9, 18, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 7, 18, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 11, 18, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 8, 18, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 7, 18, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 8, 18, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 12, 18, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 3, 19, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 8, 19, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 8, 19, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 9, 19, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 11, 19, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 1, 19, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 7, 19, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 5, 19, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 2, 19, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 7, 19, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 9, 20, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 11, 20, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 5, 20, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 12, 20, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 9, 20, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 10, 20, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 12, 20, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 2, 20, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 9, 20, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 12, 20, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 4, 21, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 2, 21, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 8, 21, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 2, 21, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 3, 21, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 3, 21, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 9, 21, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 9, 21, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 11, 21, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 2, 21, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 10, 22, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 2, 22, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 1, 22, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 8, 22, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 10, 22, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 2, 22, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 8, 22, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 12, 22, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 3, 22, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 5, 22, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 1, 23, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 8, 23, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 5, 23, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 8, 23, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 5, 23, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 10, 23, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 4, 23, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 2, 23, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 11, 23, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 9, 23, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 8, 24, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 6, 24, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 2, 24, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 4, 24, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 10, 24, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 8, 24, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 5, 24, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 7, 24, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 6, 24, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 5, 24, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 12, 25, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 4, 25, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 8, 25, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 5, 25, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 11, 25, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 12, 25, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 5, 25, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 3, 25, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 6, 25, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 8, 25, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 5, 26, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 8, 26, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 8, 26, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 3, 26, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 5, 26, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 3, 26, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 1, 26, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 10, 26, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 4, 26, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 8, 26, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 4, 27, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 6, 27, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 10, 27, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 8, 27, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 7, 27, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 9, 27, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 7, 27, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 7, 27, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 7, 27, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 2, 27, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 4, 28, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 3, 28, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 3, 28, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 6, 28, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 5, 28, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 1, 28, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 5, 28, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 11, 28, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 11, 28, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 4, 28, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 12, 29, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 10, 29, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 2, 29, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 6, 29, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 4, 29, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 2, 29, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 5, 29, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 1, 29, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 10, 29, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 9, 29, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 9, 30, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 7, 30, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 4, 30, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 2, 30, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 12, 30, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 9, 30, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 8, 30, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 9, 30, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 7, 30, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 1, 30, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 5, 31, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 9, 31, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 11, 31, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 2, 31, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 5, 31, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 8, 31, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 8, 31, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 6, 31, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 10, 31, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 6, 31, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 1, 32, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 6, 32, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 12, 32, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 4, 32, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 11, 32, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 5, 32, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 10, 32, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 8, 32, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 5, 32, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 11, 32, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 9, 33, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 10, 33, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 11, 33, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 10, 33, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 10, 33, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 7, 33, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 9, 33, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 6, 33, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 12, 33, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 8, 33, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 1, 34, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 6, 34, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 5, 34, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 12, 34, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 3, 34, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 10, 34, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 2, 34, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 4, 34, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 10, 34, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 5, 34, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 4, 35, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 4, 35, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 9, 35, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 6, 35, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 4, 35, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 5, 35, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 9, 35, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 4, 35, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 12, 35, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 7, 35, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 10, 36, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 12, 36, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 9, 36, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 11, 36, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 7, 36, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 6, 36, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 4, 36, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 10, 36, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 1, 36, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 8, 36, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 5, 37, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 7, 37, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 5, 37, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 2, 37, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 2, 37, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 2, 37, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 5, 37, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 9, 37, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 3, 37, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 5, 37, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 4, 38, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 5, 38, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 11, 38, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 6, 38, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 8, 38, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 6, 38, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 5, 38, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 10, 38, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 12, 38, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 7, 38, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 4, 39, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 9, 39, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 6, 39, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 2, 39, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 7, 39, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 2, 39, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 12, 39, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 7, 39, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 7, 39, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 9, 39, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 10, 40, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 10, 40, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 3, 40, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 8, 40, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 10, 40, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 12, 40, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 7, 40, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 1, 40, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 11, 40, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 9, 40, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 6, 41, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 10, 41, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 2, 41, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 9, 41, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 11, 41, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 2, 41, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 6, 41, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 9, 41, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 5, 41, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 4, 41, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 1, 42, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 7, 42, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 9, 42, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 8, 42, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 5, 42, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 3, 42, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 3, 42, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 9, 42, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 9, 42, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 3, 42, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 2, 43, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 7, 43, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 4, 43, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 5, 43, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 9, 43, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 2, 43, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 10, 43, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 4, 43, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 2, 43, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 2, 43, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 7, 44, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 3, 44, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 2, 44, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 5, 44, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 7, 44, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 4, 44, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 5, 44, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 12, 44, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 9, 44, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 2, 44, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 8, 45, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 6, 45, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 2, 45, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 6, 45, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 3, 45, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 3, 45, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 3, 45, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 9, 45, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 8, 45, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 10, 45, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 10, 46, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 8, 46, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 8, 46, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 12, 46, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 5, 46, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 12, 46, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 7, 46, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 10, 46, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 9, 46, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 9, 46, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 12, 47, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 5, 47, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 5, 47, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 2, 47, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 4, 47, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 10, 47, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 10, 47, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 3, 47, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 9, 47, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 7, 47, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 4, 48, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 7, 48, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 8, 48, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 9, 48, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 6, 48, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 10, 48, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 12, 48, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 7, 48, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 5, 48, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 12, 48, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 11, 49, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 7, 49, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 3, 49, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 1, 49, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 4, 49, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 10, 49, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 11, 49, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 3, 49, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 11, 49, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 11, 49, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 1, 50, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 2, 50, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 1, 50, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 2, 50, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 3, 50, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 5, 50, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 12, 50, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 11, 50, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 2, 50, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 3, 50, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 10, 51, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 3, 51, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 9, 51, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 10, 51, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 6, 51, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 10, 51, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 1, 51, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 10, 51, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 8, 51, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 8, 51, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 9, 52, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 1, 52, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 2, 52, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 3, 52, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 9, 52, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 3, 52, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 10, 52, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 4, 52, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 8, 52, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 2, 52, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 7, 53, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 6, 53, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 9, 53, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 1, 53, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 3, 53, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 5, 53, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 7, 53, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 12, 53, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 8, 53, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 7, 53, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 4, 54, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 10, 54, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 3, 54, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 6, 54, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 8, 54, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 7, 54, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 7, 54, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 5, 54, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 1, 54, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 6, 54, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 2, 55, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 6, 55, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 6, 55, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 6, 55, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 12, 55, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 10, 55, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 9, 55, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 7, 55, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 11, 55, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 7, 55, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 1, 56, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 3, 56, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 5, 56, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 8, 56, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 5, 56, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 9, 56, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 7, 56, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 11, 56, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 6, 56, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 8, 56, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 8, 57, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 8, 57, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 11, 57, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 9, 57, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 2, 57, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 10, 57, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 3, 57, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 2, 57, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 1, 57, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 4, 57, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 2, 58, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 6, 58, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 5, 58, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 8, 58, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 7, 58, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 3, 58, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 3, 58, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 6, 58, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 12, 58, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 8, 58, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 10, 59, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 10, 59, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 7, 59, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 3, 59, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 10, 59, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 9, 59, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 11, 59, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 9, 59, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 2, 59, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 1, 59, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 8, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 5, 60, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 8, 60, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 5, 60, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 8, 60, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 6, 60, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 2, 60, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 8, 60, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 5, 60, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 11, 60, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 10, 61, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 3, 61, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 9, 61, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 5, 61, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 4, 61, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 9, 61, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 4, 61, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 5, 61, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 5, 61, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 8, 61, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 9, 62, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 5, 62, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 5, 62, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 10, 62, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 5, 62, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 7, 62, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 9, 62, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 2, 62, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 11, 62, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 8, 62, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 11, 63, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 8, 63, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 11, 63, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 11, 63, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 2, 63, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 10, 63, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 11, 63, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 10, 63, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 8, 63, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 3, 63, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 6, 64, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 10, 64, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 6, 64, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 8, 64, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 8, 64, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 3, 64, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 10, 64, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 4, 64, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 7, 64, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 6, 64, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 11, 65, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 2, 65, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 3, 65, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 4, 65, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 11, 65, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 12, 65, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 9, 65, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 3, 65, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 2, 65, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 10, 65, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 4, 66, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 9, 66, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 8, 66, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 3, 66, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 12, 66, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 7, 66, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 3, 66, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 1, 66, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 2, 66, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 8, 66, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 9, 67, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 12, 67, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 6, 67, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 5, 67, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 7, 67, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 10, 67, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 11, 67, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 12, 67, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 9, 67, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 4, 67, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 8, 68, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 8, 68, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 11, 68, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 2, 68, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 9, 68, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 2, 68, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 12, 68, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 3, 68, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 3, 68, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 7, 68, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 11, 69, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 7, 69, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 4, 69, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 10, 69, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 9, 69, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 6, 69, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 11, 69, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 2, 69, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 11, 69, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 5, 69, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 3, 70, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 3, 70, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 2, 70, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 8, 70, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 8, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 11, 70, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 2, 70, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 3, 70, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 12, 70, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 9, 70, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 3, 71, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 3, 71, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 6, 71, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 9, 71, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 3, 71, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 5, 71, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 7, 71, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 2, 71, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 3, 71, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 3, 71, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 3, 72, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 10, 72, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 3, 72, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 12, 72, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 11, 72, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 9, 72, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 3, 72, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 9, 72, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 6, 72, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 12, 72, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 3, 73, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 3, 73, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 10, 73, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 3, 73, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 5, 73, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 11, 73, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 10, 73, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 11, 73, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 9, 73, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 9, 73, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 7, 74, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 12, 74, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 6, 74, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 11, 74, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 5, 74, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 6, 74, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 6, 74, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 3, 74, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 5, 74, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 3, 74, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 4, 75, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 5, 75, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 10, 75, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 10, 75, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 8, 75, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 6, 75, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 11, 75, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 3, 75, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 4, 75, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 11, 75, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 2, 76, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 4, 76, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 9, 76, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 2, 76, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 10, 76, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 4, 76, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 6, 76, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 5, 76, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 11, 76, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 9, 76, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 5, 77, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 10, 77, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 9, 77, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 4, 77, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 11, 77, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 5, 77, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 9, 77, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 5, 77, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 4, 77, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 7, 77, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 7, 78, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 3, 78, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 10, 78, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 3, 78, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 12, 78, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 3, 78, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 10, 78, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 12, 78, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 6, 78, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 5, 78, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 1, 79, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 5, 79, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 5, 79, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 9, 79, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 5, 79, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 1, 79, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 3, 79, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 9, 79, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 8, 79, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 12, 79, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 3, 80, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 2, 80, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 1, 80, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 4, 80, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 8, 80, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 2, 80, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 3, 80, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 9, 80, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 4, 80, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 9, 80, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 10, 81, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 2, 81, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 2, 81, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 11, 81, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 5, 81, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 11, 81, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 3, 81, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 10, 81, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 12, 81, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 5, 81, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 11, 82, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 5, 82, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 6, 82, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 8, 82, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 11, 82, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 7, 82, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 10, 82, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 5, 82, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 9, 82, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 9, 82, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 8, 83, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 2, 83, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 11, 83, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 11, 83, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 10, 83, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 9, 83, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 6, 83, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 11, 83, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 5, 83, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 7, 83, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 1, 84, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 5, 84, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 10, 84, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 4, 84, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 10, 84, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 5, 84, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 6, 84, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 10, 84, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 6, 84, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 6, 84, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 1, 85, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 6, 85, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 2, 85, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 4, 85, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 7, 85, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 9, 85, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 1, 85, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 1, 85, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 5, 85, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 8, 85, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 5, 86, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 7, 86, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 3, 86, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 7, 86, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 10, 86, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 10, 86, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 4, 86, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 2, 86, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 3, 86, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 11, 86, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 11, 87, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 8, 87, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 11, 87, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 4, 87, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 10, 87, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 2, 87, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 9, 87, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 4, 87, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 11, 87, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 12, 87, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 4, 88, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 11, 88, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 5, 88, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 2, 88, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 2, 88, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 5, 88, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 12, 88, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 7, 88, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 4, 88, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 9, 88, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 7, 89, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 2, 89, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 3, 89, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 2, 89, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 3, 89, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 4, 89, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 9, 89, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 9, 89, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 2, 89, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 6, 89, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 7, 90, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 8, 90, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 3, 90, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 8, 90, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 10, 90, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 10, 90, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 3, 90, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 4, 90, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 7, 90, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 2, 90, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 6, 91, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 7, 91, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 8, 91, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 7, 91, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 4, 91, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 3, 91, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 6, 91, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 3, 91, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 1, 91, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 10, 91, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 9, 92, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 4, 92, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 2, 92, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 9, 92, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 8, 92, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 10, 92, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 4, 92, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 8, 92, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 2, 92, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 12, 92, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 3, 93, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 5, 93, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 5, 93, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 10, 93, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 7, 93, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 5, 93, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 4, 93, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 5, 93, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 2, 93, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 9, 93, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 4, 94, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 5, 94, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 7, 94, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 3, 94, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 7, 94, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 11, 94, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 5, 94, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 11, 94, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 7, 94, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 4, 94, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 3, 95, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 5, 95, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 10, 95, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 11, 95, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 9, 95, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 4, 95, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 7, 95, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 9, 95, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 6, 95, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 3, 95, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 2, 96, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 10, 96, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 9, 96, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 7, 96, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 9, 96, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 4, 96, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 4, 96, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 7, 96, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 6, 96, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 10, 96, 2105);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 4, 97, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 5, 97, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 3, 97, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 5, 97, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 2, 97, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 3, 97, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 4, 97, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 8, 97, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 4, 97, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 9, 97, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 11, 98, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 2, 98, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 6, 98, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 5, 98, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 11, 98, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 12, 98, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 8, 98, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 9, 98, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 5, 98, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 3, 98, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 1, 99, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 6, 99, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 4, 99, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 4, 99, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 2, 99, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 11, 99, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 7, 99, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 7, 99, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 9, 99, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 4, 99, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 4, 100, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 8, 100, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 2, 100, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 12, 100, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 9, 100, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 12, 100, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 12, 100, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 11, 100, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 2, 100, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 4, 100, 2101);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------- Inserting users available instruments ---------------------------------------------------------------------------------
insert into users_available_instruments (user_id, cart_id) values (21, 669)
insert into users_available_instruments (user_id, cart_id) values (21, 530)
insert into users_available_instruments (user_id, cart_id) values (21, 260)
insert into users_available_instruments (user_id, cart_id) values (21, 849)
insert into users_available_instruments (user_id, cart_id) values (21, 1045)
insert into users_available_instruments (user_id, cart_id) values (21, 519)
insert into users_available_instruments (user_id, cart_id) values (21, 802)
insert into users_available_instruments (user_id, cart_id) values (21, 999)
insert into users_available_instruments (user_id, cart_id) values (21, 278)
insert into users_available_instruments (user_id, cart_id) values (21, 222)
insert into users_available_instruments (user_id, cart_id) values (22, 841)
insert into users_available_instruments (user_id, cart_id) values (22, 1029)
insert into users_available_instruments (user_id, cart_id) values (22, 1035)
insert into users_available_instruments (user_id, cart_id) values (22, 909)
insert into users_available_instruments (user_id, cart_id) values (22, 925)
insert into users_available_instruments (user_id, cart_id) values (22, 573)
insert into users_available_instruments (user_id, cart_id) values (22, 966)
insert into users_available_instruments (user_id, cart_id) values (22, 145)
insert into users_available_instruments (user_id, cart_id) values (22, 567)
insert into users_available_instruments (user_id, cart_id) values (22, 342)
insert into users_available_instruments (user_id, cart_id) values (23, 1080)
insert into users_available_instruments (user_id, cart_id) values (23, 467)
insert into users_available_instruments (user_id, cart_id) values (23, 70)
insert into users_available_instruments (user_id, cart_id) values (23, 1038)
insert into users_available_instruments (user_id, cart_id) values (23, 271)
insert into users_available_instruments (user_id, cart_id) values (23, 979)
insert into users_available_instruments (user_id, cart_id) values (23, 1)
insert into users_available_instruments (user_id, cart_id) values (23, 682)
insert into users_available_instruments (user_id, cart_id) values (23, 873)
insert into users_available_instruments (user_id, cart_id) values (23, 590)
insert into users_available_instruments (user_id, cart_id) values (24, 1165)
insert into users_available_instruments (user_id, cart_id) values (24, 700)
insert into users_available_instruments (user_id, cart_id) values (24, 999)
insert into users_available_instruments (user_id, cart_id) values (24, 998)
insert into users_available_instruments (user_id, cart_id) values (24, 849)
insert into users_available_instruments (user_id, cart_id) values (24, 4)
insert into users_available_instruments (user_id, cart_id) values (24, 744)
insert into users_available_instruments (user_id, cart_id) values (24, 106)
insert into users_available_instruments (user_id, cart_id) values (24, 1002)
insert into users_available_instruments (user_id, cart_id) values (24, 149)
insert into users_available_instruments (user_id, cart_id) values (25, 503)
insert into users_available_instruments (user_id, cart_id) values (25, 934)
insert into users_available_instruments (user_id, cart_id) values (25, 414)
insert into users_available_instruments (user_id, cart_id) values (25, 173)
insert into users_available_instruments (user_id, cart_id) values (25, 1140)
insert into users_available_instruments (user_id, cart_id) values (25, 800)
insert into users_available_instruments (user_id, cart_id) values (25, 378)
insert into users_available_instruments (user_id, cart_id) values (25, 1159)
insert into users_available_instruments (user_id, cart_id) values (25, 647)
insert into users_available_instruments (user_id, cart_id) values (25, 75)
insert into users_available_instruments (user_id, cart_id) values (26, 1136)
insert into users_available_instruments (user_id, cart_id) values (26, 421)
insert into users_available_instruments (user_id, cart_id) values (26, 467)
insert into users_available_instruments (user_id, cart_id) values (26, 1062)
insert into users_available_instruments (user_id, cart_id) values (26, 63)
insert into users_available_instruments (user_id, cart_id) values (26, 998)
insert into users_available_instruments (user_id, cart_id) values (26, 349)
insert into users_available_instruments (user_id, cart_id) values (26, 712)
insert into users_available_instruments (user_id, cart_id) values (26, 182)
insert into users_available_instruments (user_id, cart_id) values (26, 293)
insert into users_available_instruments (user_id, cart_id) values (27, 32)
insert into users_available_instruments (user_id, cart_id) values (27, 5)
insert into users_available_instruments (user_id, cart_id) values (27, 550)
insert into users_available_instruments (user_id, cart_id) values (27, 830)
insert into users_available_instruments (user_id, cart_id) values (27, 1163)
insert into users_available_instruments (user_id, cart_id) values (27, 523)
insert into users_available_instruments (user_id, cart_id) values (27, 242)
insert into users_available_instruments (user_id, cart_id) values (27, 855)
insert into users_available_instruments (user_id, cart_id) values (27, 115)
insert into users_available_instruments (user_id, cart_id) values (27, 789)
insert into users_available_instruments (user_id, cart_id) values (28, 171)
insert into users_available_instruments (user_id, cart_id) values (28, 1119)
insert into users_available_instruments (user_id, cart_id) values (28, 822)
insert into users_available_instruments (user_id, cart_id) values (28, 690)
insert into users_available_instruments (user_id, cart_id) values (28, 316)
insert into users_available_instruments (user_id, cart_id) values (28, 28)
insert into users_available_instruments (user_id, cart_id) values (28, 842)
insert into users_available_instruments (user_id, cart_id) values (28, 1069)
insert into users_available_instruments (user_id, cart_id) values (28, 771)
insert into users_available_instruments (user_id, cart_id) values (28, 327)
insert into users_available_instruments (user_id, cart_id) values (29, 47)
insert into users_available_instruments (user_id, cart_id) values (29, 179)
insert into users_available_instruments (user_id, cart_id) values (29, 853)
insert into users_available_instruments (user_id, cart_id) values (29, 658)
insert into users_available_instruments (user_id, cart_id) values (29, 953)
insert into users_available_instruments (user_id, cart_id) values (29, 107)
insert into users_available_instruments (user_id, cart_id) values (29, 483)
insert into users_available_instruments (user_id, cart_id) values (29, 1066)
insert into users_available_instruments (user_id, cart_id) values (29, 944)
insert into users_available_instruments (user_id, cart_id) values (29, 1049)
insert into users_available_instruments (user_id, cart_id) values (30, 779)
insert into users_available_instruments (user_id, cart_id) values (30, 931)
insert into users_available_instruments (user_id, cart_id) values (30, 1089)
insert into users_available_instruments (user_id, cart_id) values (30, 109)
insert into users_available_instruments (user_id, cart_id) values (30, 480)
insert into users_available_instruments (user_id, cart_id) values (30, 547)
insert into users_available_instruments (user_id, cart_id) values (30, 906)
insert into users_available_instruments (user_id, cart_id) values (30, 303)
insert into users_available_instruments (user_id, cart_id) values (30, 1166)
insert into users_available_instruments (user_id, cart_id) values (30, 721)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

