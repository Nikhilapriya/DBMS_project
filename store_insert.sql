\c store



INSERT into Seller values('s1', 'Chandler','#930,HSR Layout',34,'M');
INSERT into Seller values('s2', 'Monica', '#12b,KR Market',45,'F');
INSERT into Seller values('s3' , 'Rachel' , '#20A,Gandhi Bazar',60,'F');
INSERT into Seller values('s4', 'Pheobe', '#45C,RR Nagar',32,'M');
INSERT into Seller values('s5', 'Joey','#1S,JP Nagar',28,'M');
INSERT into Seller values('s6','Ross', '#111D, MG Road',29,'F');
INSERT into Seller values('s7', 'Gunther' ,'#34G,Museum Road',31,'M');
INSERT into Seller values('s8' ,'Mike', '#09I,JP Nagar',43,'M');


INSERT into Customer values('c1','Damon', '87D,Giri Nagar','9725673990',21,'M');
INSERT into Customer values('c2','Stefan', '56B,Jaya Nagar','9345678888',19,'M');
INSERT into Customer values('c3','Caroline', '64R,Minerva Circle','7345678907',26,'F');
INSERT into Customer values('c4', 'Elena', '49L,Race Course Road','6732563336',43,'F');
INSERT into Customer values('c5','Bonnie','098P,RV Road', '6236234568',30,'M');
INSERT into Customer values('c6','Klaus','76T,Mansion Heights,Hosur','8452223331',26,'M');
INSERT into Customer values('c7','Enzo','33B,PES Road','6890001235',36,'M');
INSERT into Customer values('c8','Katherine','8B,Palace Grounds','7772221238',55,'F');


INSERT into Bill values('b1', '2021-09-27', 400 , 'Perfume', 'c1');
INSERT into Bill values('b2', '2021-09-25', 120, 'Shampoo', 'c2');
INSERT into Bill values('b3', '2021-09-22', 200, 'Chocolate', 'c3');
INSERT into Bill values('b4', '2021-09-22', 150, 'Soda', 'c4');
INSERT into Bill values('b5', '2021-09-23', 300, 'Perfume', 'c5');
INSERT into Bill values('b6', '2021-09-21', 100, 'Chocolate', 'c6');
INSERT into Bill values('b7', '2021-09-27', 100, 'Shampoo', 'c7');
INSERT into Bill values('b8', '2021-09-21', 350, 'Shampoo', 'c8');
INSERT into Bill values('b9', '2021-09-21', 350, 'Bottle', 'c8');
INSERT into Bill values('b10', '2021-09-21', 350, 'Rope', 'c8');


INSERT into Product values('p1', 300.0, 349.0, 6, 100,'Perfume');
INSERT into Product values('p2', 400.0, 825.0, 7, 300,'Shampoo');
INSERT into Product values('p3', 99.0, 99.0 ,8, 350,'Chocolate');
INSERT into Product values('p4', 100.0, 149.0, 1, 550,'Soda');
INSERT into Product values('p5', 50.0, 54.0, 3, 125,'Bottle');
INSERT into Product values('p6', 150.0, 149.5, 5, 200,'Pen');
INSERT into Product values('p7', 69.0, 70.0, 2, 500,'Book');
INSERT into Product values('p8', 80.0, 750.0, 4, 250,'Rope');



INSERT into Inventory values('i1', 100, 1, 'Perfume','b1' );
INSERT into Inventory values('i2', 200, 2 , 'Shampoo','b2');
INSERT into Inventory values('i3', 300, 3, 'Chocolate','b3');
INSERT into Inventory values('i4', 150, 4, 'Soda','b4');
INSERT into Inventory values('i5', 100, 5, 'Perfume','b5');
INSERT into Inventory values('i6', 500, 6 , 'Chocolate','b6');
INSERT into Inventory values('i7', 300, 7, 'Shampoo','b7');
INSERT into Inventory values('i8', 250, 8, 'Shampoo','b8');
INSERT into Inventory values('i9', 250, 8, 'Bottle','b9');
INSERT into Inventory values('i10', 250, 8, 'Rope','b10');



INSERT into Stock values(1, '2021-09-27', 'i1', 'p1' );
INSERT into Stock values(2, '2021-09-25', 'i2', 'p2');
INSERT into Stock values(3, '2021-09-22', 'i3', 'p3');
INSERT into Stock values(4, '2021-09-22', 'i4', 'p4');
INSERT into Stock values(5, '2021-09-23', 'i5', 'p1');
INSERT into Stock values(6, '2021-09-27', 'i6', 'p3');
INSERT into Stock values(7, '2021-09-21', 'i7', 'p2');
INSERT into Stock values(8, '2021-09-21', 'i8', 'p2');
INSERT into Stock values(9, '2021-09-21', 'i9', 'p5');
INSERT into Stock values(10, '2021-09-21', 'i10', 'p8');



INSERT into Seller_phnno values('s1', '8765345699');
INSERT into Seller_phnno values('s2', '9933227745');
INSERT into Seller_phnno values('s3', '7455638890');
INSERT into Seller_phnno values('s4', '9855112346');
INSERT into Seller_phnno values('s5', '6889044112');
INSERT into Seller_phnno values('s6', '7123348889');
INSERT into Seller_phnno values('s7', '6900235688');
INSERT into Seller_phnno values('s8', '9812235560');


INSERT into Seller_sells values('s1', 'p1');
INSERT into Seller_sells values('s2', 'p2');
INSERT into Seller_sells values('s3', 'p3');
INSERT into Seller_sells values('s4', 'p4');
INSERT into Seller_sells values('s5', 'p5');
INSERT into Seller_sells values('s6', 'p6');
INSERT into Seller_sells values('s7', 'p7');
INSERT into Seller_sells values('s8', 'p8');


INSERT into Customer_buys values('c1', 'p1');
INSERT into Customer_buys values('c2', 'p2');
INSERT into Customer_buys values('c3', 'p3');
INSERT into Customer_buys values('c4', 'p4');
INSERT into Customer_buys values('c5', 'p1');
INSERT into Customer_buys values('c6', 'p3');
INSERT into Customer_buys values('c7', 'p2');
INSERT into Customer_buys values('c8', 'p2');
INSERT into Customer_buys values('c8', 'p5');
INSERT into Customer_buys values('c8', 'p8');

