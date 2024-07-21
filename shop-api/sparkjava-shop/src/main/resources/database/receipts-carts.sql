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
insert into receipts (id, code, total_price, paid, change, issued_at) values (1, 'ghKU1', 5016.99, 15000.0, 9983.01, '2024-02-13T17:13:09');
insert into receipts (id, code, total_price, paid, change, issued_at) values (2, 'sLZS2', 5715.99, 15000.0, 9284.01, '2024-04-06T11:02:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (3, 'jQNN3', 4961.99, 15000.0, 10038.01, '2024-03-07T17:46:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (4, 'Ln404', 6431.99, 15000.0, 8568.01, '2024-05-18T16:24:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (5, 'tQAE5', 6155.99, 15000.0, 8844.01, '2024-04-24T13:21:01');
insert into receipts (id, code, total_price, paid, change, issued_at) values (6, '2l046', 4562.99, 15000.0, 10437.01, '2024-05-19T13:39:42');
insert into receipts (id, code, total_price, paid, change, issued_at) values (7, 'FyT27', 4695.99, 15000.0, 10304.01, '2024-06-09T17:05:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (8, 'kRJ78', 5458.99, 15000.0, 9541.01, '2024-06-07T14:14:50');
insert into receipts (id, code, total_price, paid, change, issued_at) values (9, 'urGb9', 7257.99, 15000.0, 7742.01, '2024-05-02T13:25:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (10, 'Ci2z10', 6526.99, 15000.0, 8473.01, '2024-01-21T15:31:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (11, 'D3zx11', 4931.99, 15000.0, 10068.01, '2024-04-19T16:24:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (12, 'OiCW12', 5752.99, 15000.0, 9247.01, '2024-03-02T13:47:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (13, 'OpQ613', 5120.99, 15000.0, 9879.01, '2024-04-05T11:40:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (14, 'QVFc14', 5016.99, 15000.0, 9983.01, '2024-03-07T09:07:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (15, 'SKza15', 5469.99, 15000.0, 9530.01, '2024-04-21T15:43:40');
insert into receipts (id, code, total_price, paid, change, issued_at) values (16, 'bQwT16', 5386.99, 15000.0, 9613.01, '2024-03-08T15:13:51');
insert into receipts (id, code, total_price, paid, change, issued_at) values (17, 'MIvq17', 6368.99, 15000.0, 8631.01, '2024-04-04T11:13:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (18, 'NLnm18', 6010.99, 15000.0, 8989.01, '2024-02-23T14:10:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (19, 'VzmX19', 6348.99, 15000.0, 8651.01, '2024-03-21T17:07:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (20, 'LkVv20', 4592.99, 15000.0, 10407.01, '2024-03-17T10:43:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (21, '5y0R21', 4980.99, 15000.0, 10019.01, '2024-05-08T12:23:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (22, 'RAWk22', 4209.99, 15000.0, 10790.01, '2024-06-26T11:51:17');
insert into receipts (id, code, total_price, paid, change, issued_at) values (23, '4Muu23', 4417.99, 15000.0, 10582.01, '2024-02-04T17:54:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (24, 'QvgV24', 6925.99, 15000.0, 8074.01, '2024-02-03T11:41:05');
insert into receipts (id, code, total_price, paid, change, issued_at) values (25, 'XglY25', 4793.99, 15000.0, 10206.01, '2024-02-15T16:14:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (26, 'x1FU26', 6607.99, 15000.0, 8392.01, '2024-06-13T13:49:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (27, '57yV27', 6461.99, 15000.0, 8538.01, '2024-05-02T12:33:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (28, 'OGPd28', 6573.99, 15000.0, 8426.01, '2024-05-12T14:22:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (29, 'xM2429', 6423.99, 15000.0, 8576.01, '2024-02-07T11:52:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (30, 'ymtf30', 6215.99, 15000.0, 8784.01, '2024-03-04T16:30:20');
insert into receipts (id, code, total_price, paid, change, issued_at) values (31, 'WAKM31', 5501.99, 15000.0, 9498.01, '2024-01-07T13:41:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (32, 'o1Aa32', 5862.99, 15000.0, 9137.01, '2024-03-08T11:31:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (33, 'iQen33', 6367.99, 15000.0, 8632.01, '2024-01-08T14:43:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (34, 'klTf34', 5030.99, 15000.0, 9969.01, '2024-04-22T12:24:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (35, 'orBd35', 5666.99, 15000.0, 9333.01, '2024-03-22T17:41:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (36, 'x6Pa36', 3905.99, 15000.0, 11094.01, '2024-01-04T13:11:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (37, 'xr2X37', 5253.99, 15000.0, 9746.01, '2024-04-24T17:36:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (38, 'NYHg38', 5628.99, 15000.0, 9371.01, '2024-05-19T12:10:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (39, 'oubo39', 5227.99, 15000.0, 9772.01, '2024-04-05T11:06:38');
insert into receipts (id, code, total_price, paid, change, issued_at) values (40, 'Nf4H40', 4587.99, 15000.0, 10412.01, '2024-02-26T17:37:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (41, 'p6oL41', 4691.99, 15000.0, 10308.01, '2024-03-25T14:25:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (42, 'f2Pq42', 5459.99, 15000.0, 9540.01, '2024-03-14T17:33:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (43, 'lVPe43', 5528.99, 15000.0, 9471.01, '2024-03-09T11:43:26');
insert into receipts (id, code, total_price, paid, change, issued_at) values (44, 'SQg944', 5769.99, 15000.0, 9230.01, '2024-04-22T16:05:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (45, 'abNp45', 4928.99, 15000.0, 10071.01, '2024-02-19T13:14:01');
insert into receipts (id, code, total_price, paid, change, issued_at) values (46, 'xygt46', 5163.99, 15000.0, 9836.01, '2024-04-11T15:38:35');
insert into receipts (id, code, total_price, paid, change, issued_at) values (47, 'f0YN47', 4354.99, 15000.0, 10645.01, '2024-01-10T09:23:53');
insert into receipts (id, code, total_price, paid, change, issued_at) values (48, '3QFv48', 4957.99, 15000.0, 10042.01, '2024-02-10T16:50:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (49, 'blrv49', 4613.99, 15000.0, 10386.01, '2024-03-19T13:39:24');
insert into receipts (id, code, total_price, paid, change, issued_at) values (50, 'WfRs50', 6930.99, 15000.0, 8069.01, '2024-02-26T09:09:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (51, 'eVdA51', 4951.99, 15000.0, 10048.01, '2024-04-06T14:19:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (52, 'JTeC52', 4178.99, 15000.0, 10821.01, '2024-05-02T14:33:44');
insert into receipts (id, code, total_price, paid, change, issued_at) values (53, '1zW853', 4441.99, 15000.0, 10558.01, '2024-04-25T11:04:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (54, 'ggL454', 4656.99, 15000.0, 10343.01, '2024-01-21T14:27:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (55, 'yU7V55', 6483.99, 15000.0, 8516.01, '2024-04-04T11:10:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (56, 'cMnw56', 5845.99, 15000.0, 9154.01, '2024-06-04T15:03:49');
insert into receipts (id, code, total_price, paid, change, issued_at) values (57, 'YnFn57', 6519.99, 15000.0, 8480.01, '2024-03-12T15:49:55');
insert into receipts (id, code, total_price, paid, change, issued_at) values (58, 'wwop58', 4543.99, 15000.0, 10456.01, '2024-04-27T10:42:04');
insert into receipts (id, code, total_price, paid, change, issued_at) values (59, 'jjkh59', 5632.99, 15000.0, 9367.01, '2024-02-23T12:06:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (60, 'kq7F60', 5165.99, 15000.0, 9834.01, '2024-01-05T10:04:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (61, 'yTbU61', 7445.99, 15000.0, 7554.01, '2024-02-09T12:14:54');
insert into receipts (id, code, total_price, paid, change, issued_at) values (62, 'uvHP62', 5741.99, 15000.0, 9258.01, '2024-02-17T11:43:21');
insert into receipts (id, code, total_price, paid, change, issued_at) values (63, '43OI63', 5817.99, 15000.0, 9182.01, '2024-01-11T16:40:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (64, 'syBZ64', 5303.99, 15000.0, 9696.01, '2024-03-23T11:17:31');
insert into receipts (id, code, total_price, paid, change, issued_at) values (65, 'GHYp65', 4701.99, 15000.0, 10298.01, '2024-06-17T13:38:30');
insert into receipts (id, code, total_price, paid, change, issued_at) values (66, 'L0FY66', 5342.99, 15000.0, 9657.01, '2024-06-12T09:43:41');
insert into receipts (id, code, total_price, paid, change, issued_at) values (67, 'Jeqv67', 5682.99, 15000.0, 9317.01, '2024-04-09T11:24:47');
insert into receipts (id, code, total_price, paid, change, issued_at) values (68, 't9O168', 6761.99, 15000.0, 8238.01, '2024-03-22T17:36:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (69, '9nI769', 6007.99, 15000.0, 8992.01, '2024-06-27T15:53:52');
insert into receipts (id, code, total_price, paid, change, issued_at) values (70, 'HhyF70', 6481.99, 15000.0, 8518.01, '2024-01-15T14:23:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (71, 'vOpV71', 5587.99, 15000.0, 9412.01, '2024-05-15T17:19:32');
insert into receipts (id, code, total_price, paid, change, issued_at) values (72, 'opuZ72', 5076.99, 15000.0, 9923.01, '2024-03-05T17:35:45');
insert into receipts (id, code, total_price, paid, change, issued_at) values (73, 'SIjZ73', 5632.99, 15000.0, 9367.01, '2024-04-26T15:37:23');
insert into receipts (id, code, total_price, paid, change, issued_at) values (74, 'dSfm74', 4761.99, 15000.0, 10238.01, '2024-03-15T13:30:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (75, '8AD775', 3543.99, 15000.0, 11456.01, '2024-02-02T16:45:07');
insert into receipts (id, code, total_price, paid, change, issued_at) values (76, 'scmX76', 6725.99, 15000.0, 8274.01, '2024-02-21T10:39:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (77, 't9UB77', 5338.99, 15000.0, 9661.01, '2024-01-20T17:35:33');
insert into receipts (id, code, total_price, paid, change, issued_at) values (78, 'MPDa78', 5868.99, 15000.0, 9131.01, '2024-03-11T15:43:18');
insert into receipts (id, code, total_price, paid, change, issued_at) values (79, 'SVIC79', 4140.99, 15000.0, 10859.01, '2024-02-27T11:09:14');
insert into receipts (id, code, total_price, paid, change, issued_at) values (80, 'Hp6U80', 6238.99, 15000.0, 8761.01, '2024-04-16T09:20:06');
insert into receipts (id, code, total_price, paid, change, issued_at) values (81, 'bJuK81', 6124.99, 15000.0, 8875.01, '2024-05-16T16:19:37');
insert into receipts (id, code, total_price, paid, change, issued_at) values (82, 'HA6x82', 5109.99, 15000.0, 9890.01, '2024-03-12T09:46:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (83, 'Uz2M83', 4727.99, 15000.0, 10272.01, '2024-03-11T15:23:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (84, 'xPO884', 5862.99, 15000.0, 9137.01, '2024-03-10T15:16:11');
insert into receipts (id, code, total_price, paid, change, issued_at) values (85, 'ZtnJ85', 6485.99, 15000.0, 8514.01, '2024-04-12T12:16:22');
insert into receipts (id, code, total_price, paid, change, issued_at) values (86, 'LTwi86', 5342.99, 15000.0, 9657.01, '2024-04-21T14:25:15');
insert into receipts (id, code, total_price, paid, change, issued_at) values (87, 'xlDV87', 5685.99, 15000.0, 9314.01, '2024-02-16T17:15:12');
insert into receipts (id, code, total_price, paid, change, issued_at) values (88, 'VtJH88', 5186.99, 15000.0, 9813.01, '2024-05-04T16:38:48');
insert into receipts (id, code, total_price, paid, change, issued_at) values (89, 'srxR89', 5139.99, 15000.0, 9860.01, '2024-06-19T10:27:39');
insert into receipts (id, code, total_price, paid, change, issued_at) values (90, 'FH0C90', 6521.99, 15000.0, 8478.01, '2024-01-25T13:19:25');
insert into receipts (id, code, total_price, paid, change, issued_at) values (91, 'kzeB91', 5938.99, 15000.0, 9061.01, '2024-04-19T16:10:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (92, 'HK0t92', 4020.99, 15000.0, 10979.01, '2024-01-24T09:52:28');
insert into receipts (id, code, total_price, paid, change, issued_at) values (93, 'SrLO93', 6079.99, 15000.0, 8920.01, '2024-02-02T14:12:34');
insert into receipts (id, code, total_price, paid, change, issued_at) values (94, 'TIx894', 4212.99, 15000.0, 10787.01, '2024-04-24T09:07:46');
insert into receipts (id, code, total_price, paid, change, issued_at) values (95, 'xnVZ95', 5819.99, 15000.0, 9180.01, '2024-03-19T12:48:03');
insert into receipts (id, code, total_price, paid, change, issued_at) values (96, 'NnOD96', 3950.99, 15000.0, 11049.01, '2024-02-23T16:23:29');
insert into receipts (id, code, total_price, paid, change, issued_at) values (97, 'm8rL97', 5977.99, 15000.0, 9022.01, '2024-04-22T16:45:36');
insert into receipts (id, code, total_price, paid, change, issued_at) values (98, '0ZEY98', 4314.99, 15000.0, 10685.01, '2024-05-03T16:52:13');
insert into receipts (id, code, total_price, paid, change, issued_at) values (99, 'YIBI99', 5012.99, 15000.0, 9987.01, '2024-05-08T12:01:10');
insert into receipts (id, code, total_price, paid, change, issued_at) values (100, 'o7QS100', 4680.99, 15000.0, 10319.01, '2024-04-24T17:46:43');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Altering receipt_id_seq ----------------------------------------------------------------------------------------
alter sequence receipt_id_seq restart with 101;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------- Inserting receipt items ----------------------------------------------------------------------------------------
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1, 4, 1, 1274);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (2, 10, 1, 1246);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (3, 10, 1, 1211);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (4, 7, 1, 1286);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (5, 10, 1, 1275);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (6, 11, 1, 1292);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (7, 10, 1, 1220);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (8, 9, 1, 1237);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (9, 5, 1, 1266);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (10, 5, 1, 1229);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (11, 4, 2, 1249);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (12, 6, 2, 1277);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (13, 7, 2, 1238);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (14, 5, 2, 1279);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (15, 12, 2, 1265);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (16, 11, 2, 1287);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (17, 6, 2, 1233);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (18, 3, 2, 1293);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (19, 10, 2, 1241);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (20, 1, 2, 1215);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (21, 9, 3, 1207);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (22, 10, 3, 1244);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (23, 3, 3, 1247);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (24, 10, 3, 1255);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (25, 2, 3, 1248);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (26, 11, 3, 1280);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (27, 12, 3, 1272);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (28, 8, 3, 1235);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (29, 11, 3, 1290);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (30, 11, 3, 1278);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (31, 2, 4, 1227);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (32, 12, 4, 1282);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (33, 10, 4, 1288);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (34, 6, 4, 1204);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (35, 6, 4, 1252);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (36, 3, 4, 1242);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (37, 12, 4, 1208);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (38, 12, 4, 1243);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (39, 2, 4, 1261);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (40, 2, 4, 1213);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (41, 4, 5, 1228);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (42, 10, 5, 1271);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (43, 8, 5, 1217);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (44, 1, 5, 1276);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (45, 3, 5, 1251);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (46, 1, 5, 1298);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (47, 11, 5, 1209);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (48, 8, 5, 1253);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (49, 5, 5, 1245);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (50, 9, 5, 1219);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (51, 12, 6, 1230);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (52, 3, 6, 1216);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (53, 10, 6, 1232);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (54, 10, 6, 1283);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (55, 5, 6, 1240);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (56, 5, 6, 1231);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (57, 5, 6, 1226);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (58, 10, 6, 1254);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (59, 2, 6, 1210);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (60, 2, 6, 1236);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (61, 2, 7, 1296);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (62, 5, 7, 1239);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (63, 12, 7, 1260);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (64, 4, 7, 1294);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (65, 8, 7, 1259);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (66, 10, 7, 1285);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (67, 2, 7, 1212);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (68, 5, 7, 1222);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (69, 6, 7, 1258);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (70, 9, 7, 1264);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (71, 5, 8, 1203);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (72, 7, 8, 1234);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (73, 8, 8, 1225);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (74, 8, 8, 1206);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (75, 7, 8, 1269);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (76, 10, 8, 1297);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (77, 6, 8, 1270);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (78, 2, 8, 1256);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (79, 7, 8, 1250);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (80, 7, 8, 1262);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (81, 8, 9, 1218);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (82, 5, 9, 1273);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (83, 5, 9, 1268);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (84, 4, 9, 1267);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (85, 10, 9, 1300);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (86, 2, 9, 1202);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (87, 12, 9, 1223);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (88, 10, 9, 1284);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (89, 4, 9, 1257);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (90, 4, 9, 1201);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (91, 3, 10, 1291);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (92, 11, 10, 1299);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (93, 6, 10, 1221);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (94, 6, 10, 1224);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (95, 8, 10, 1289);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (96, 10, 10, 1295);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (97, 7, 10, 1205);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (98, 4, 10, 1281);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (99, 1, 10, 1263);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (100, 7, 10, 1214);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (101, 6, 11, 1316);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (102, 1, 11, 1313);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (103, 6, 11, 1305);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (104, 4, 11, 1318);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (105, 7, 11, 1306);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (106, 10, 11, 1322);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (107, 5, 11, 1372);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (108, 3, 11, 1348);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (109, 9, 11, 1345);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (110, 7, 11, 1391);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (111, 5, 12, 1315);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (112, 6, 12, 1330);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (113, 3, 12, 1383);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (114, 10, 12, 1356);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (115, 7, 12, 1314);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (116, 2, 12, 1378);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (117, 10, 12, 1331);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (118, 12, 12, 1352);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (119, 11, 12, 1397);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (120, 4, 12, 1326);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (121, 10, 13, 1341);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (122, 3, 13, 1308);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (123, 3, 13, 1358);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (124, 10, 13, 1376);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (125, 10, 13, 1307);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (126, 6, 13, 1324);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (127, 10, 13, 1389);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (128, 9, 13, 1366);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (129, 11, 13, 1323);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (130, 8, 13, 1342);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (131, 9, 14, 1373);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (132, 3, 14, 1371);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (133, 8, 14, 1386);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (134, 7, 14, 1359);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (135, 4, 14, 1311);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (136, 8, 14, 1319);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (137, 4, 14, 1361);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (138, 6, 14, 1347);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (139, 3, 14, 1339);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (140, 2, 14, 1301);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (141, 3, 15, 1321);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (142, 4, 15, 1360);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (143, 5, 15, 1334);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (144, 10, 15, 1349);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (145, 3, 15, 1393);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (146, 9, 15, 1336);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (147, 3, 15, 1346);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (148, 8, 15, 1353);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (149, 3, 15, 1351);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (150, 4, 15, 1396);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (151, 7, 16, 1364);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (152, 10, 16, 1384);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (153, 7, 16, 1333);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (154, 7, 16, 1368);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (155, 2, 16, 1309);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (156, 10, 16, 1362);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (157, 10, 16, 1379);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (158, 3, 16, 1395);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (159, 2, 16, 1317);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (160, 8, 16, 1340);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (161, 7, 17, 1380);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (162, 9, 17, 1370);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (163, 2, 17, 1312);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (164, 11, 17, 1377);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (165, 4, 17, 1332);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (166, 9, 17, 1325);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (167, 7, 17, 1381);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (168, 6, 17, 1374);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (169, 3, 17, 1357);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (170, 3, 17, 1320);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (171, 11, 18, 1355);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (172, 5, 18, 1337);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (173, 7, 18, 1338);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (174, 4, 18, 1365);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (175, 2, 18, 1369);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (176, 5, 18, 1304);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (177, 9, 18, 1390);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (178, 6, 18, 1375);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (179, 6, 18, 1343);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (180, 9, 18, 1363);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (181, 3, 19, 1327);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (182, 5, 19, 1329);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (183, 6, 19, 1303);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (184, 6, 19, 1400);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (185, 4, 19, 1399);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (186, 10, 19, 1387);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (187, 1, 19, 1328);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (188, 12, 19, 1310);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (189, 9, 19, 1394);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (190, 12, 19, 1335);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (191, 3, 20, 1344);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (192, 10, 20, 1388);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (193, 2, 20, 1302);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (194, 7, 20, 1385);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (195, 3, 20, 1382);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (196, 7, 20, 1367);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (197, 9, 20, 1350);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (198, 11, 20, 1398);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (199, 5, 20, 1354);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (200, 8, 20, 1392);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (201, 12, 21, 1436);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (202, 2, 21, 1437);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (203, 12, 21, 1435);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (204, 2, 21, 1443);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (205, 11, 21, 1490);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (206, 6, 21, 1451);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (207, 5, 21, 1412);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (208, 2, 21, 1428);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (209, 11, 21, 1404);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (210, 6, 21, 1458);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (211, 6, 22, 1420);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (212, 6, 22, 1422);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (213, 3, 22, 1423);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (214, 7, 22, 1465);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (215, 9, 22, 1431);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (216, 1, 22, 1469);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (217, 6, 22, 1485);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (218, 4, 22, 1450);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (219, 6, 22, 1452);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (220, 9, 22, 1408);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (221, 7, 23, 1403);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (222, 3, 23, 1421);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (223, 2, 23, 1424);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (224, 7, 23, 1419);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (225, 4, 23, 1468);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (226, 1, 23, 1448);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (227, 5, 23, 1432);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (228, 8, 23, 1416);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (229, 6, 23, 1456);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (230, 12, 23, 1411);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (231, 10, 24, 1426);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (232, 6, 24, 1446);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (233, 2, 24, 1405);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (234, 8, 24, 1409);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (235, 8, 24, 1439);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (236, 6, 24, 1487);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (237, 9, 24, 1464);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (238, 4, 24, 1460);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (239, 8, 24, 1480);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (240, 11, 24, 1415);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (241, 11, 25, 1440);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (242, 11, 25, 1484);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (243, 9, 25, 1434);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (244, 4, 25, 1471);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (245, 5, 25, 1461);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (246, 5, 25, 1493);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (247, 3, 25, 1473);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (248, 12, 25, 1429);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (249, 7, 25, 1454);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (250, 10, 25, 1438);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (251, 11, 26, 1425);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (252, 5, 26, 1500);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (253, 6, 26, 1418);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (254, 4, 26, 1467);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (255, 6, 26, 1459);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (256, 2, 26, 1447);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (257, 10, 26, 1462);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (258, 10, 26, 1401);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (259, 11, 26, 1463);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (260, 6, 26, 1466);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (261, 8, 27, 1476);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (262, 6, 27, 1496);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (263, 3, 27, 1410);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (264, 1, 27, 1498);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (265, 2, 27, 1433);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (266, 1, 27, 1407);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (267, 7, 27, 1442);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (268, 7, 27, 1489);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (269, 2, 27, 1417);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (270, 5, 27, 1486);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (271, 11, 28, 1453);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (272, 10, 28, 1483);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (273, 6, 28, 1488);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (274, 3, 28, 1449);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (275, 11, 28, 1497);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (276, 12, 28, 1492);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (277, 12, 28, 1455);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (278, 12, 28, 1445);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (279, 9, 28, 1478);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (280, 4, 28, 1406);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (281, 4, 29, 1481);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (282, 6, 29, 1475);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (283, 3, 29, 1479);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (284, 9, 29, 1491);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (285, 4, 29, 1444);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (286, 7, 29, 1470);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (287, 2, 29, 1441);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (288, 3, 29, 1430);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (289, 9, 29, 1495);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (290, 3, 29, 1472);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (291, 2, 30, 1414);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (292, 6, 30, 1427);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (293, 6, 30, 1482);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (294, 1, 30, 1413);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (295, 6, 30, 1494);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (296, 2, 30, 1474);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (297, 4, 30, 1499);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (298, 7, 30, 1477);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (299, 2, 30, 1457);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (300, 4, 30, 1402);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (301, 7, 31, 1506);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (302, 6, 31, 1524);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (303, 1, 31, 1523);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (304, 5, 31, 1532);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (305, 12, 31, 1521);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (306, 5, 31, 1566);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (307, 7, 31, 1519);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (308, 11, 31, 1553);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (309, 5, 31, 1502);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (310, 1, 31, 1539);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (311, 5, 32, 1593);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (312, 10, 32, 1552);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (313, 3, 32, 1520);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (314, 8, 32, 1530);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (315, 8, 32, 1536);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (316, 7, 32, 1509);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (317, 12, 32, 1573);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (318, 9, 32, 1589);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (319, 3, 32, 1588);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (320, 11, 32, 1592);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (321, 7, 33, 1550);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (322, 7, 33, 1548);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (323, 8, 33, 1555);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (324, 9, 33, 1545);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (325, 2, 33, 1533);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (326, 4, 33, 1517);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (327, 6, 33, 1540);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (328, 7, 33, 1513);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (329, 3, 33, 1551);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (330, 2, 33, 1571);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (331, 11, 34, 1591);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (332, 11, 34, 1562);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (333, 8, 34, 1579);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (334, 4, 34, 1595);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (335, 3, 34, 1505);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (336, 6, 34, 1582);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (337, 5, 34, 1569);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (338, 9, 34, 1538);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (339, 7, 34, 1572);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (340, 2, 34, 1584);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (341, 9, 35, 1511);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (342, 4, 35, 1549);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (343, 2, 35, 1531);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (344, 3, 35, 1570);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (345, 4, 35, 1534);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (346, 2, 35, 1547);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (347, 5, 35, 1576);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (348, 10, 35, 1514);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (349, 7, 35, 1597);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (350, 8, 35, 1564);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (351, 6, 36, 1563);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (352, 2, 36, 1522);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (353, 11, 36, 1528);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (354, 4, 36, 1568);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (355, 5, 36, 1561);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (356, 7, 36, 1503);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (357, 10, 36, 1508);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (358, 9, 36, 1529);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (359, 11, 36, 1546);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (360, 11, 36, 1577);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (361, 6, 37, 1599);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (362, 2, 37, 1544);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (363, 8, 37, 1594);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (364, 11, 37, 1590);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (365, 7, 37, 1512);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (366, 7, 37, 1554);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (367, 4, 37, 1578);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (368, 8, 37, 1507);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (369, 5, 37, 1557);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (370, 8, 37, 1535);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (371, 12, 38, 1510);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (372, 1, 38, 1559);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (373, 11, 38, 1526);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (374, 4, 38, 1541);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (375, 8, 38, 1515);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (376, 5, 38, 1587);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (377, 2, 38, 1583);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (378, 6, 38, 1556);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (379, 9, 38, 1516);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (380, 9, 38, 1567);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (381, 11, 39, 1585);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (382, 7, 39, 1581);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (383, 2, 39, 1580);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (384, 9, 39, 1574);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (385, 3, 39, 1504);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (386, 6, 39, 1537);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (387, 3, 39, 1558);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (388, 11, 39, 1527);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (389, 7, 39, 1560);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (390, 6, 39, 1518);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (391, 3, 40, 1525);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (392, 4, 40, 1598);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (393, 12, 40, 1543);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (394, 1, 40, 1586);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (395, 6, 40, 1575);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (396, 3, 40, 1600);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (397, 3, 40, 1542);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (398, 12, 40, 1596);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (399, 10, 40, 1565);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (400, 6, 40, 1501);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (401, 10, 41, 1680);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (402, 10, 41, 1650);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (403, 8, 41, 1682);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (404, 2, 41, 1647);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (405, 9, 41, 1632);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (406, 8, 41, 1625);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (407, 6, 41, 1679);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (408, 11, 41, 1624);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (409, 5, 41, 1617);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (410, 10, 41, 1618);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (411, 8, 42, 1692);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (412, 9, 42, 1666);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (413, 1, 42, 1628);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (414, 9, 42, 1660);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (415, 6, 42, 1638);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (416, 2, 42, 1601);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (417, 11, 42, 1693);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (418, 2, 42, 1606);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (419, 1, 42, 1654);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (420, 3, 42, 1665);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (421, 9, 43, 1642);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (422, 4, 43, 1661);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (423, 12, 43, 1621);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (424, 4, 43, 1622);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (425, 5, 43, 1607);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (426, 8, 43, 1636);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (427, 6, 43, 1667);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (428, 10, 43, 1612);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (429, 3, 43, 1655);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (430, 9, 43, 1615);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (431, 7, 44, 1635);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (432, 4, 44, 1675);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (433, 3, 44, 1640);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (434, 11, 44, 1685);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (435, 5, 44, 1697);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (436, 11, 44, 1663);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (437, 1, 44, 1681);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (438, 3, 44, 1611);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (439, 8, 44, 1664);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (440, 2, 44, 1605);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (441, 7, 45, 1671);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (442, 6, 45, 1687);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (443, 12, 45, 1657);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (444, 11, 45, 1626);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (445, 10, 45, 1620);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (446, 4, 45, 1613);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (447, 4, 45, 1674);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (448, 10, 45, 1698);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (449, 8, 45, 1619);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (450, 7, 45, 1686);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (451, 2, 46, 1608);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (452, 4, 46, 1634);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (453, 9, 46, 1616);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (454, 10, 46, 1641);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (455, 10, 46, 1673);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (456, 9, 46, 1677);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (457, 6, 46, 1683);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (458, 3, 46, 1649);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (459, 3, 46, 1637);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (460, 8, 46, 1633);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (461, 1, 47, 1604);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (462, 11, 47, 1644);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (463, 2, 47, 1643);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (464, 11, 47, 1630);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (465, 3, 47, 1659);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (466, 8, 47, 1645);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (467, 10, 47, 1678);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (468, 11, 47, 1610);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (469, 11, 47, 1689);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (470, 5, 47, 1603);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (471, 2, 48, 1684);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (472, 5, 48, 1602);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (473, 5, 48, 1653);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (474, 11, 48, 1627);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (475, 1, 48, 1695);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (476, 9, 48, 1691);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (477, 1, 48, 1690);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (478, 10, 48, 1662);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (479, 1, 48, 1672);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (480, 6, 48, 1658);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (481, 8, 49, 1669);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (482, 9, 49, 1699);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (483, 9, 49, 1629);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (484, 9, 49, 1694);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (485, 5, 49, 1652);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (486, 3, 49, 1656);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (487, 10, 49, 1623);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (488, 4, 49, 1676);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (489, 2, 49, 1639);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (490, 8, 49, 1696);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (491, 5, 50, 1614);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (492, 12, 50, 1631);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (493, 8, 50, 1670);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (494, 2, 50, 1646);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (495, 5, 50, 1688);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (496, 6, 50, 1668);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (497, 4, 50, 1700);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (498, 10, 50, 1648);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (499, 6, 50, 1651);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (500, 5, 50, 1609);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (501, 4, 51, 1755);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (502, 4, 51, 1705);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (503, 3, 51, 1770);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (504, 9, 51, 1748);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (505, 1, 51, 1790);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (506, 1, 51, 1793);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (507, 9, 51, 1756);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (508, 5, 51, 1721);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (509, 2, 51, 1767);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (510, 1, 51, 1722);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (511, 8, 52, 1741);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (512, 10, 52, 1769);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (513, 4, 52, 1707);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (514, 3, 52, 1768);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (515, 4, 52, 1727);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (516, 8, 52, 1778);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (517, 12, 52, 1772);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (518, 4, 52, 1795);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (519, 7, 52, 1712);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (520, 7, 52, 1788);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (521, 3, 53, 1720);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (522, 3, 53, 1728);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (523, 8, 53, 1750);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (524, 3, 53, 1734);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (525, 4, 53, 1754);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (526, 6, 53, 1733);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (527, 11, 53, 1760);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (528, 7, 53, 1777);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (529, 3, 53, 1743);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (530, 9, 53, 1792);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (531, 10, 54, 1737);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (532, 2, 54, 1746);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (533, 11, 54, 1785);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (534, 10, 54, 1789);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (535, 3, 54, 1779);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (536, 2, 54, 1783);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (537, 9, 54, 1735);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (538, 11, 54, 1742);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (539, 7, 54, 1729);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (540, 11, 54, 1732);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (541, 5, 55, 1719);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (542, 12, 55, 1763);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (543, 2, 55, 1714);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (544, 1, 55, 1774);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (545, 7, 55, 1771);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (546, 12, 55, 1713);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (547, 6, 55, 1726);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (548, 8, 55, 1753);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (549, 8, 55, 1724);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (550, 8, 55, 1773);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (551, 10, 56, 1757);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (552, 5, 56, 1796);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (553, 3, 56, 1776);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (554, 2, 56, 1736);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (555, 10, 56, 1766);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (556, 5, 56, 1761);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (557, 4, 56, 1702);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (558, 3, 56, 1745);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (559, 10, 56, 1731);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (560, 11, 56, 1706);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (561, 8, 57, 1708);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (562, 11, 57, 1780);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (563, 2, 57, 1759);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (564, 10, 57, 1781);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (565, 9, 57, 1782);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (566, 9, 57, 1751);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (567, 10, 57, 1740);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (568, 5, 57, 1704);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (569, 4, 57, 1730);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (570, 4, 57, 1711);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (571, 9, 58, 1747);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (572, 11, 58, 1725);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (573, 6, 58, 1738);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (574, 12, 58, 1764);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (575, 8, 58, 1794);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (576, 10, 58, 1749);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (577, 9, 58, 1784);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (578, 7, 58, 1718);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (579, 9, 58, 1762);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (580, 6, 58, 1744);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (581, 8, 59, 1717);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (582, 1, 59, 1787);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (583, 4, 59, 1703);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (584, 8, 59, 1709);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (585, 3, 59, 1786);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (586, 8, 59, 1758);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (587, 2, 59, 1797);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (588, 10, 59, 1791);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (589, 3, 59, 1798);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (590, 3, 59, 1799);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (591, 7, 60, 1739);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (592, 9, 60, 1800);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (593, 10, 60, 1710);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (594, 6, 60, 1765);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (595, 9, 60, 1701);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (596, 8, 60, 1752);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (597, 6, 60, 1716);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (598, 8, 60, 1723);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (599, 7, 60, 1715);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (600, 9, 60, 1775);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (601, 4, 61, 1881);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (602, 11, 61, 1862);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (603, 8, 61, 1856);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (604, 4, 61, 1870);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (605, 9, 61, 1813);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (606, 5, 61, 1859);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (607, 7, 61, 1833);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (608, 2, 61, 1807);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (609, 4, 61, 1844);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (610, 6, 61, 1853);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (611, 6, 62, 1873);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (612, 9, 62, 1837);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (613, 2, 62, 1834);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (614, 4, 62, 1810);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (615, 5, 62, 1883);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (616, 7, 62, 1850);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (617, 4, 62, 1806);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (618, 10, 62, 1845);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (619, 6, 62, 1891);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (620, 4, 62, 1896);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (621, 9, 63, 1809);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (622, 10, 63, 1851);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (623, 4, 63, 1824);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (624, 12, 63, 1841);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (625, 5, 63, 1832);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (626, 11, 63, 1820);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (627, 8, 63, 1882);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (628, 5, 63, 1877);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (629, 5, 63, 1816);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (630, 10, 63, 1889);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (631, 3, 64, 1863);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (632, 4, 64, 1886);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (633, 7, 64, 1860);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (634, 12, 64, 1818);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (635, 5, 64, 1836);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (636, 1, 64, 1885);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (637, 2, 64, 1858);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (638, 12, 64, 1879);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (639, 12, 64, 1842);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (640, 10, 64, 1869);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (641, 6, 65, 1888);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (642, 12, 65, 1874);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (643, 7, 65, 1838);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (644, 2, 65, 1843);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (645, 9, 65, 1817);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (646, 11, 65, 1872);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (647, 10, 65, 1884);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (648, 12, 65, 1847);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (649, 12, 65, 1821);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (650, 7, 65, 1855);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (651, 7, 66, 1864);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (652, 8, 66, 1861);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (653, 12, 66, 1805);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (654, 7, 66, 1852);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (655, 9, 66, 1892);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (656, 6, 66, 1812);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (657, 2, 66, 1893);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (658, 12, 66, 1803);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (659, 7, 66, 1895);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (660, 2, 66, 1868);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (661, 5, 67, 1826);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (662, 4, 67, 1827);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (663, 7, 67, 1819);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (664, 3, 67, 1840);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (665, 2, 67, 1823);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (666, 9, 67, 1811);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (667, 3, 67, 1830);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (668, 9, 67, 1849);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (669, 4, 67, 1875);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (670, 12, 67, 1825);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (671, 10, 68, 1867);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (672, 2, 68, 1828);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (673, 8, 68, 1848);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (674, 1, 68, 1866);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (675, 7, 68, 1890);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (676, 2, 68, 1814);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (677, 12, 68, 1804);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (678, 2, 68, 1829);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (679, 6, 68, 1876);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (680, 3, 68, 1887);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (681, 1, 69, 1899);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (682, 10, 69, 1808);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (683, 4, 69, 1802);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (684, 6, 69, 1878);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (685, 6, 69, 1831);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (686, 9, 69, 1865);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (687, 11, 69, 1880);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (688, 2, 69, 1801);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (689, 1, 69, 1854);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (690, 3, 69, 1835);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (691, 10, 70, 1897);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (692, 7, 70, 1857);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (693, 3, 70, 1846);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (694, 4, 70, 1839);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (695, 2, 70, 1894);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (696, 6, 70, 1898);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (697, 9, 70, 1900);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (698, 11, 70, 1822);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (699, 1, 70, 1871);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (700, 11, 70, 1815);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (701, 8, 71, 1946);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (702, 1, 71, 1961);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (703, 11, 71, 1928);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (704, 7, 71, 1940);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (705, 3, 71, 1959);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (706, 4, 71, 1917);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (707, 4, 71, 1984);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (708, 4, 71, 1911);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (709, 2, 71, 1935);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (710, 11, 71, 1930);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (711, 4, 72, 1974);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (712, 5, 72, 1941);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (713, 3, 72, 1950);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (714, 8, 72, 1921);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (715, 11, 72, 1998);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (716, 11, 72, 1987);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (717, 5, 72, 1976);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (718, 3, 72, 1948);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (719, 1, 72, 1905);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (720, 5, 72, 1916);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (721, 10, 73, 1983);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (722, 7, 73, 1962);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (723, 5, 73, 1965);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (724, 11, 73, 1947);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (725, 9, 73, 1981);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (726, 2, 73, 1938);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (727, 9, 73, 1952);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (728, 2, 73, 1920);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (729, 7, 73, 1977);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (730, 9, 73, 1978);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (731, 6, 74, 1992);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (732, 10, 74, 1989);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (733, 7, 74, 1966);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (734, 9, 74, 1949);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (735, 5, 74, 1932);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (736, 5, 74, 1915);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (737, 5, 74, 1957);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (738, 11, 74, 1912);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (739, 2, 74, 1982);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (740, 8, 74, 1904);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (741, 4, 75, 1953);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (742, 10, 75, 1971);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (743, 7, 75, 1937);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (744, 2, 75, 1944);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (745, 4, 75, 1929);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (746, 12, 75, 1902);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (747, 10, 75, 1985);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (748, 10, 75, 1967);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (749, 3, 75, 1975);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (750, 8, 75, 1913);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (751, 3, 76, 1939);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (752, 4, 76, 1996);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (753, 5, 76, 1951);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (754, 2, 76, 1914);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (755, 4, 76, 1988);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (756, 2, 76, 1908);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (757, 6, 76, 1991);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (758, 11, 76, 1906);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (759, 12, 76, 1968);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (760, 8, 76, 1995);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (761, 8, 77, 1970);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (762, 4, 77, 1934);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (763, 9, 77, 1907);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (764, 6, 77, 1963);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (765, 9, 77, 1933);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (766, 9, 77, 1924);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (767, 4, 77, 1969);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (768, 3, 77, 1925);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (769, 2, 77, 1901);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (770, 6, 77, 1990);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (771, 6, 78, 1909);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (772, 6, 78, 1980);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (773, 3, 78, 1942);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (774, 4, 78, 1994);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (775, 5, 78, 1986);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (776, 11, 78, 1943);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (777, 8, 78, 1955);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (778, 1, 78, 1954);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (779, 6, 78, 1958);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (780, 4, 78, 1923);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (781, 1, 79, 1956);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (782, 5, 79, 1926);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (783, 6, 79, 1964);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (784, 5, 79, 1910);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (785, 6, 79, 1973);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (786, 5, 79, 1960);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (787, 12, 79, 1972);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (788, 12, 79, 1936);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (789, 7, 79, 1922);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (790, 6, 79, 1931);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (791, 9, 80, 1919);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (792, 8, 80, 1927);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (793, 11, 80, 1903);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (794, 11, 80, 1993);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (795, 11, 80, 2000);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (796, 7, 80, 1997);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (797, 9, 80, 1945);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (798, 6, 80, 1999);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (799, 9, 80, 1979);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (800, 5, 80, 1918);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (801, 5, 81, 2054);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (802, 8, 81, 2045);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (803, 9, 81, 2055);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (804, 1, 81, 2003);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (805, 11, 81, 2072);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (806, 10, 81, 2060);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (807, 7, 81, 2058);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (808, 9, 81, 2006);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (809, 10, 81, 2061);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (810, 8, 81, 2093);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (811, 6, 82, 2080);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (812, 5, 82, 2032);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (813, 4, 82, 2074);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (814, 1, 82, 2041);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (815, 8, 82, 2053);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (816, 5, 82, 2016);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (817, 8, 82, 2031);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (818, 7, 82, 2047);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (819, 4, 82, 2011);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (820, 11, 82, 2090);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (821, 4, 83, 2084);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (822, 2, 83, 2066);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (823, 2, 83, 2027);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (824, 5, 83, 2079);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (825, 12, 83, 2028);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (826, 6, 83, 2091);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (827, 5, 83, 2039);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (828, 2, 83, 2033);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (829, 3, 83, 2024);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (830, 7, 83, 2029);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (831, 6, 84, 2095);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (832, 10, 84, 2065);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (833, 10, 84, 2059);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (834, 4, 84, 2096);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (835, 8, 84, 2036);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (836, 7, 84, 2035);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (837, 7, 84, 2073);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (838, 9, 84, 2083);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (839, 6, 84, 2017);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (840, 12, 84, 2020);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (841, 9, 85, 2005);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (842, 8, 85, 2068);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (843, 7, 85, 2030);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (844, 3, 85, 2038);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (845, 9, 85, 2004);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (846, 6, 85, 2046);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (847, 4, 85, 2013);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (848, 10, 85, 2098);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (849, 6, 85, 2087);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (850, 12, 85, 2081);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (851, 5, 86, 2099);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (852, 2, 86, 2012);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (853, 10, 86, 2057);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (854, 10, 86, 2042);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (855, 3, 86, 2040);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (856, 5, 86, 2026);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (857, 5, 86, 2050);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (858, 6, 86, 2049);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (859, 5, 86, 2078);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (860, 11, 86, 2092);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (861, 5, 87, 2064);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (862, 10, 87, 2002);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (863, 4, 87, 2025);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (864, 7, 87, 2019);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (865, 11, 87, 2082);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (866, 10, 87, 2076);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (867, 4, 87, 2023);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (868, 1, 87, 2022);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (869, 7, 87, 2021);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (870, 6, 87, 2043);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (871, 11, 88, 2048);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (872, 5, 88, 2089);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (873, 7, 88, 2056);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (874, 5, 88, 2008);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (875, 8, 88, 2015);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (876, 2, 88, 2100);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (877, 11, 88, 2009);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (878, 11, 88, 2075);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (879, 6, 88, 2062);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (880, 3, 88, 2086);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (881, 7, 89, 2070);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (882, 3, 89, 2014);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (883, 4, 89, 2018);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (884, 2, 89, 2094);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (885, 11, 89, 2071);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (886, 9, 89, 2067);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (887, 3, 89, 2037);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (888, 5, 89, 2052);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (889, 5, 89, 2077);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (890, 6, 89, 2069);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (891, 5, 90, 2007);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (892, 8, 90, 2097);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (893, 9, 90, 2034);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (894, 8, 90, 2001);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (895, 6, 90, 2063);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (896, 7, 90, 2088);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (897, 9, 90, 2085);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (898, 8, 90, 2044);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (899, 11, 90, 2051);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (900, 5, 90, 2010);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (901, 7, 91, 2130);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (902, 12, 91, 2161);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (903, 11, 91, 2174);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (904, 8, 91, 2184);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (905, 2, 91, 2191);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (906, 11, 91, 2129);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (907, 6, 91, 2157);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (908, 8, 91, 2167);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (909, 11, 91, 2126);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (910, 10, 91, 2134);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (911, 2, 92, 2155);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (912, 8, 92, 2135);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (913, 3, 92, 2118);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (914, 4, 92, 2159);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (915, 11, 92, 2141);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (916, 12, 92, 2162);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (917, 3, 92, 2197);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (918, 8, 92, 2103);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (919, 3, 92, 2195);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (920, 6, 92, 2166);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (921, 7, 93, 2170);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (922, 2, 93, 2119);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (923, 6, 93, 2163);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (924, 11, 93, 2150);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (925, 9, 93, 2152);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (926, 2, 93, 2143);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (927, 9, 93, 2185);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (928, 6, 93, 2112);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (929, 3, 93, 2147);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (930, 4, 93, 2110);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (931, 2, 94, 2137);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (932, 11, 94, 2101);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (933, 8, 94, 2144);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (934, 5, 94, 2164);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (935, 2, 94, 2136);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (936, 1, 94, 2189);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (937, 8, 94, 2114);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (938, 6, 94, 2154);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (939, 4, 94, 2127);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (940, 2, 94, 2142);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (941, 5, 95, 2123);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (942, 9, 95, 2160);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (943, 3, 95, 2173);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (944, 10, 95, 2133);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (945, 9, 95, 2125);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (946, 11, 95, 2116);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (947, 1, 95, 2131);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (948, 3, 95, 2132);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (949, 1, 95, 2151);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (950, 10, 95, 2111);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (951, 2, 96, 2149);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (952, 3, 96, 2156);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (953, 6, 96, 2183);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (954, 5, 96, 2193);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (955, 4, 96, 2177);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (956, 6, 96, 2107);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (957, 8, 96, 2115);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (958, 10, 96, 2188);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (959, 6, 96, 2168);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (960, 12, 96, 2113);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (961, 2, 97, 2148);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (962, 2, 97, 2145);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (963, 10, 97, 2117);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (964, 4, 97, 2106);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (965, 12, 97, 2180);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (966, 12, 97, 2140);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (967, 10, 97, 2158);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (968, 9, 97, 2182);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (969, 1, 97, 2109);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (970, 11, 97, 2128);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (971, 4, 98, 2138);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (972, 2, 98, 2175);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (973, 7, 98, 2153);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (974, 8, 98, 2186);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (975, 1, 98, 2192);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (976, 7, 98, 2139);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (977, 6, 98, 2181);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (978, 4, 98, 2169);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (979, 2, 98, 2171);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (980, 4, 98, 2124);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (981, 11, 99, 2190);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (982, 5, 99, 2187);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (983, 4, 99, 2199);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (984, 2, 99, 2122);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (985, 2, 99, 2179);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (986, 10, 99, 2172);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (987, 10, 99, 2102);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (988, 2, 99, 2176);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (989, 8, 99, 2178);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (990, 5, 99, 2146);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (991, 9, 100, 2194);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (992, 11, 100, 2104);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (993, 7, 100, 2120);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (994, 7, 100, 2165);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (995, 6, 100, 2121);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (996, 3, 100, 2196);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (997, 5, 100, 2200);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (998, 5, 100, 2108);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (999, 12, 100, 2198);
insert into receipt_items (id, product_quantity, receipt_id, product_id) values (1000, 5, 100, 2105);
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------- Altering receipt_item_id_seq -------------------------------------------------------------------------------------
alter sequence receipt_item_id_seq restart with 1001;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------ Carts -------------------------------------------------------------------------------------------------
insert into carts (potential_customer_id, available_instrument_id) values (21, 46)
insert into carts (potential_customer_id, available_instrument_id) values (21, 1001)
insert into carts (potential_customer_id, available_instrument_id) values (21, 374)
insert into carts (potential_customer_id, available_instrument_id) values (21, 460)
insert into carts (potential_customer_id, available_instrument_id) values (21, 714)
insert into carts (potential_customer_id, available_instrument_id) values (21, 715)
insert into carts (potential_customer_id, available_instrument_id) values (21, 1091)
insert into carts (potential_customer_id, available_instrument_id) values (21, 809)
insert into carts (potential_customer_id, available_instrument_id) values (21, 893)
insert into carts (potential_customer_id, available_instrument_id) values (21, 1052)
insert into carts (potential_customer_id, available_instrument_id) values (22, 1028)
insert into carts (potential_customer_id, available_instrument_id) values (22, 1079)
insert into carts (potential_customer_id, available_instrument_id) values (22, 1089)
insert into carts (potential_customer_id, available_instrument_id) values (22, 277)
insert into carts (potential_customer_id, available_instrument_id) values (22, 541)
insert into carts (potential_customer_id, available_instrument_id) values (22, 775)
insert into carts (potential_customer_id, available_instrument_id) values (22, 283)
insert into carts (potential_customer_id, available_instrument_id) values (22, 55)
insert into carts (potential_customer_id, available_instrument_id) values (22, 573)
insert into carts (potential_customer_id, available_instrument_id) values (22, 872)
insert into carts (potential_customer_id, available_instrument_id) values (23, 403)
insert into carts (potential_customer_id, available_instrument_id) values (23, 504)
insert into carts (potential_customer_id, available_instrument_id) values (23, 586)
insert into carts (potential_customer_id, available_instrument_id) values (23, 581)
insert into carts (potential_customer_id, available_instrument_id) values (23, 37)
insert into carts (potential_customer_id, available_instrument_id) values (23, 292)
insert into carts (potential_customer_id, available_instrument_id) values (23, 135)
insert into carts (potential_customer_id, available_instrument_id) values (23, 358)
insert into carts (potential_customer_id, available_instrument_id) values (23, 836)
insert into carts (potential_customer_id, available_instrument_id) values (23, 408)
insert into carts (potential_customer_id, available_instrument_id) values (24, 411)
insert into carts (potential_customer_id, available_instrument_id) values (24, 345)
insert into carts (potential_customer_id, available_instrument_id) values (24, 360)
insert into carts (potential_customer_id, available_instrument_id) values (24, 555)
insert into carts (potential_customer_id, available_instrument_id) values (24, 502)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1061)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1057)
insert into carts (potential_customer_id, available_instrument_id) values (24, 78)
insert into carts (potential_customer_id, available_instrument_id) values (24, 271)
insert into carts (potential_customer_id, available_instrument_id) values (24, 1178)
insert into carts (potential_customer_id, available_instrument_id) values (25, 739)
insert into carts (potential_customer_id, available_instrument_id) values (25, 1011)
insert into carts (potential_customer_id, available_instrument_id) values (25, 662)
insert into carts (potential_customer_id, available_instrument_id) values (25, 821)
insert into carts (potential_customer_id, available_instrument_id) values (25, 670)
insert into carts (potential_customer_id, available_instrument_id) values (25, 581)
insert into carts (potential_customer_id, available_instrument_id) values (25, 302)
insert into carts (potential_customer_id, available_instrument_id) values (25, 1162)
insert into carts (potential_customer_id, available_instrument_id) values (25, 111)
insert into carts (potential_customer_id, available_instrument_id) values (25, 43)
insert into carts (potential_customer_id, available_instrument_id) values (26, 380)
insert into carts (potential_customer_id, available_instrument_id) values (26, 379)
insert into carts (potential_customer_id, available_instrument_id) values (26, 837)
insert into carts (potential_customer_id, available_instrument_id) values (26, 331)
insert into carts (potential_customer_id, available_instrument_id) values (26, 422)
insert into carts (potential_customer_id, available_instrument_id) values (26, 342)
insert into carts (potential_customer_id, available_instrument_id) values (26, 338)
insert into carts (potential_customer_id, available_instrument_id) values (26, 893)
insert into carts (potential_customer_id, available_instrument_id) values (26, 449)
insert into carts (potential_customer_id, available_instrument_id) values (26, 1100)
insert into carts (potential_customer_id, available_instrument_id) values (27, 307)
insert into carts (potential_customer_id, available_instrument_id) values (27, 529)
insert into carts (potential_customer_id, available_instrument_id) values (27, 736)
insert into carts (potential_customer_id, available_instrument_id) values (27, 830)
insert into carts (potential_customer_id, available_instrument_id) values (27, 397)
insert into carts (potential_customer_id, available_instrument_id) values (27, 939)
insert into carts (potential_customer_id, available_instrument_id) values (27, 608)
insert into carts (potential_customer_id, available_instrument_id) values (27, 158)
insert into carts (potential_customer_id, available_instrument_id) values (27, 667)
insert into carts (potential_customer_id, available_instrument_id) values (27, 149)
insert into carts (potential_customer_id, available_instrument_id) values (28, 641)
insert into carts (potential_customer_id, available_instrument_id) values (28, 618)
insert into carts (potential_customer_id, available_instrument_id) values (28, 553)
insert into carts (potential_customer_id, available_instrument_id) values (28, 463)
insert into carts (potential_customer_id, available_instrument_id) values (28, 64)
insert into carts (potential_customer_id, available_instrument_id) values (28, 710)
insert into carts (potential_customer_id, available_instrument_id) values (28, 115)
insert into carts (potential_customer_id, available_instrument_id) values (28, 1127)
insert into carts (potential_customer_id, available_instrument_id) values (28, 586)
insert into carts (potential_customer_id, available_instrument_id) values (28, 371)
insert into carts (potential_customer_id, available_instrument_id) values (29, 444)
insert into carts (potential_customer_id, available_instrument_id) values (29, 185)
insert into carts (potential_customer_id, available_instrument_id) values (29, 376)
insert into carts (potential_customer_id, available_instrument_id) values (29, 217)
insert into carts (potential_customer_id, available_instrument_id) values (29, 131)
insert into carts (potential_customer_id, available_instrument_id) values (29, 165)
insert into carts (potential_customer_id, available_instrument_id) values (29, 108)
insert into carts (potential_customer_id, available_instrument_id) values (29, 403)
insert into carts (potential_customer_id, available_instrument_id) values (29, 285)
insert into carts (potential_customer_id, available_instrument_id) values (29, 1114)
insert into carts (potential_customer_id, available_instrument_id) values (30, 454)
insert into carts (potential_customer_id, available_instrument_id) values (30, 574)
insert into carts (potential_customer_id, available_instrument_id) values (30, 898)
insert into carts (potential_customer_id, available_instrument_id) values (30, 808)
insert into carts (potential_customer_id, available_instrument_id) values (30, 524)
insert into carts (potential_customer_id, available_instrument_id) values (30, 305)
insert into carts (potential_customer_id, available_instrument_id) values (30, 869)
insert into carts (potential_customer_id, available_instrument_id) values (30, 468)
insert into carts (potential_customer_id, available_instrument_id) values (30, 370)
insert into carts (potential_customer_id, available_instrument_id) values (30, 367)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

