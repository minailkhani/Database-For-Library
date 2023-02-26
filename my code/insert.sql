use project ;
insert into safedepositbox (boxID)values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);
insert into gender (name, gender) values
('patron1', 1),
('patron2', 0),
('patron3', 1),
('patron4', 0),
('patron5', 1),
('patron6', 0),
('patron7', 1),
('patron8', 0),
('patron9', 1),
('patron10', 0);
insert into library (libraryName, address, foundationYear, cafe) values
('library1', 'libaryaddress1', 1993, 1),
('library2', 'libaryaddress2', 1996, 1),
('library3', 'libaryaddress3', 1999, 0),
('library4', 'libaryaddress4', 2002, 1),
('library5', 'libaryaddress5', 2005, 1),
('library6', 'libaryaddress6', 2008, 1),
('library7', 'libaryaddress7', 2011, 0),
('library8', 'libaryaddress8', 2014, 1),
('library9', 'libaryaddress9', 2017, 0),
('library10', 'libaryaddress10', 2020,1 );
insert into topic (topicName) values
('topic1'),
('topic2'),
('topic3'),
('topic4'),
('topic5'),
('topic6'),
('topic7'),
('topic8'),
('topic9'),
('topic10');
insert into stack (stackID) values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);
insert into publisher (pblshrName, address, foundDate, manager) VALUES
('pblshr1', 'pblshrNameAddress1', 1972, 'pblshrManagerName1'),
('pblshr2', 'pblshrNameAddress2', 1974, 'pblshrManagerName2'),
('pblshr3', 'pblshrNameAddress3', 1974, 'pblshrManagerName3'),
('pblshr4', 'pblshrNameAddress4', 1978, 'pblshrManagerName4'),
('pblshr5', 'pblshrNameAddress5', 1980, 'pblshrManagerName5'),
('pblshr6', 'pblshrNameAddress6', 1980, 'pblshrManagerName6'),
('pblshr7', 'pblshrNameAddress7', 1984, 'pblshrManagerName7'),
('pblshr8', 'pblshrNameAddress8', 1986, 'pblshrManagerName8'),
('pblshr9', 'pblshrNameAddress9', 1988, 'pblshrManagerName9'),
('pblshr10', 'pblshrNameAddress10', 1990, 'pblshrManagerName10');
insert into participatingNameMail (email, name) VALUES    ################################## uonayi ke ut hastan
('participating1@gmail.com', 'participating1'),
('participating2@gmail.com', 'participating2'),
('participating3@gmail.com', 'participating3'),
('participating4@gmail.com', 'participating4'),
('participating5@gmail.com', 'participating5'),
('participating6@gmail.com', 'participating6'),
('participating7@gmail.com', 'participating7'),
('participating8@gmail.com', 'participating8'),
('participating9@gmail.com', 'participating9'),
('participating10@gmail.com', 'participating10');
insert into worker (name, responsibility, libraryName) values
('worker1', 'res1', 'library1'),
('worker2', 'res2', 'library2'),
('worker3', 'res3', 'library3'),
('worker4', 'res4', 'library4'),
('worker5', 'res5', 'library5'),
('worker6', 'res6', 'library6'),
('worker7', 'res7', 'library7'),
('worker8', 'res8', 'library8'),
('worker9', 'res9', 'library9'),
('worker10', 'res10', 'library10');
insert into patron (memberID, name, joinDare) VALUES

(100001,'patron1', '2012-12-04'),
(100002,'patron2', '2014-11-03'),
(100003,'patron3', '2016-10-02'),
(100004,'patron4', '2018-11-01'),
(100006,'patron6', '2021-04-04'),
(100005,'patron5', '2020-06-06'),
(100007,'patron7', '2017-03-03'),
(100008,'patron2', '2012-03-03'),
(100009,'patron1', '2014-02-02'),
(100010,'patron3', '2015-03-03');
insert into registerInf (NationalID, job, address, Maritalstatus, physicalcondition, email, password, cellphoneNUM, phoneNum, fathername, birthday)  values
(100001, 'job1', 'address1', 0, 'condition1', 'member1@gmail.com', 1216, 2630009,091200002, 'fathername1', '1938-10-4'),
(100002, 'job1', 'address2', 1, 'condition2', 'member2@ut.ac.ir', 1228, 2630002,091200003, 'fathername2', '1999-2-3'),
(100003, 'job3', 'address3', 1, 'condition2', 'member3@ut.ac.ir', 1239, 2630003,091200004, 'fathername2', '1954-3-3'),
(100004, 'job4', 'address4', 0, 'condition3', 'member4@ut.ac.ir', 1241, 2630004,091200005, 'fathername4', '1962-4-4'),
(100005, 'job1', 'address5', 0, 'condition5', 'member5@gmail.com', 1233, 2630005,091200006, 'fathername5', '1980-5-5'),
(100006, 'job6', 'address6', 0, 'condition4', 'member6@ut.ac.ir', 1234, 2630006,091200007, 'fathername4', '1978-6-6'),
(100007, 'job2', 'address7', 1, 'condition2', 'member7@ut.ac.ir', 1233, 2630007,091200008, 'fathername1', '1986-8-8'),
(100008, 'job8', 'address8', 0, 'condition5', 'member8@ut.ac.ir', 1234, 2630008,091200009, 'fathername2', '1994-10-10'),
(100009, 'job13', 'address9', 1, 'condition1', 'member9@ut.ac.ir', 123, 2630009,091200010, 'fathername5', '2002-4-30'),
(100010, 'job2', 'address10', 0, 'condition1', 'member10@gmail.com', 123, 2630010,091200011, 'fathername3', '2010-5-24');
insert into deposit (workerID, boxID, memberID, start, end) VALUES
(1,1, 100009, '2021-7-1 8:10:00', '2021-7-1 15:10:00'),
(2,2, 100002, '2021-5-1 8:10:00', '2021-5-1 9:10:00'),
(3,3, 100006, '2021-8-1 9:25:00', null),
(2,4, 100004, '2021-8-1 8:00:00', null),
(1,5, 100005, '2021-1-1 8:40:00', '2021-1-3 10:00:00'),
(1,2, 100006, '2021-6-13 11:10:00', '2021-6-15 8:10:00'),
(3,3, 100007, '2021-1-1 13:10:00', '2021-1-2 8:00:00'),
(2,7, 100002, '2021-2-1 9:15:00', '2021-2-1 12:10:00'),
(1,8, 100009, '2021-12-1 8:00:00', null),
(3,1, 100002, '2021-1-1 8:30:00', '2021-1-1 15:10:00');
insert into owner (email, libraryName, name, phone) values
('owner1@gmail.com', 'library1', 'ownerName1', 026310001),
('owner2@gmail.com', 'library2', 'ownerName2', 026310002),
('owner3@gmail.com', 'library3', 'ownerName3', 026310003),
('owner4@gmail.com', 'library4', 'ownerName4', 026310004),
('owner5@gmail.com', 'library5', 'ownerName5', 026310005),
('owner6@gmail.com', 'library6', 'ownerName6', 026310006),
('owner7@gmail.com', 'library7', 'ownerName7', 026310007),
('owner8@gmail.com', 'library8', 'ownerName8', 026310008),
('owner9@gmail.com', 'library9', 'ownerName9', 026310009),
('owner10@gmail.com', 'library10', 'ownerName10', 026310010);
insert into register (libraryName, memberID) VALUES
('library5', 100001),
('library2', 100002),
('library3', 100003),
('library10', 100004),
('library5', 100005),
('library6', 100006),
('library5', 100007),
('library5', 100008),
('library10', 100009),
('library10', 100010);
insert into isInByTopic (tpcName, stackNum) values
('topic1',1),
('topic4',2),
('topic3',6),
('topic4',2),
('topic5',5),
('topic6',7),
('topic5',5),
('topic8',8),
('topic1',1),
('topic5',3);
insert into source (publicationdate, name, holdable, isonhold, stackNUM, line, publName) VALUES
(1990, 'sourceName1', 1, 1,1, 11, 'pblshr4'),
(2011, 'sourceName2', 1, 1,1, 20, 'pblshr4'),
(2021, 'sourceName3', 0, 0,2, 3, 'pblshr5'),
(2001, 'sourceName4', 1, 1,2, 4, 'pblshr4'),
(2003, 'sourceName5', 1, 1,2, 3, 'pblshr5'),
(2012, 'sourceName6', 0, 0,1, 6, 'pblshr10'),
(2019, 'sourceName7', 1, 0,1, 13, 'pblshr4'),
(2000, 'sourceName8', 1, 1,2, 28, 'pblshr5'),
(2002, 'sourceName9', 1, 0,1, 19, 'pblshr5'),
(2000, 'sourceName10', 0, 0,2, 10, 'pblshr10'),

(2000, 'sourceName11', 1, 0,3, 1, 'pblshr1'),
(2000, 'sourceName12', 1, 0,3, 1, 'pblshr2'),
(2000, 'sourceName13', 1, 0,3, 3, 'pblshr3'),
(2000, 'sourceName14', 1, 1,3, 1, 'pblshr1'),
(2000, 'sourceName15', 1, 0,5, 5, 'pblshr1'),
(2000, 'sourceName16', 1, 1,5, 6, 'pblshr2'),
(2000, 'sourceName17', 1, 0,4, 17, 'pblshr2'),
(2000, 'sourceName18', 1, 0,4, 18, 'pblshr3'),
(2000, 'sourceName19', 1, 1,3, 9, 'pblshr1'),
(2000, 'sourceName20', 1, 0,3, 20, 'pblshr2'),

(2000, 'sourceName21', 0, 0,6, 1, 'pblshr6'),
(2000, 'sourceName22', 0, 0,6, 1, 'pblshr6'),
(2000, 'sourceName23', 1, 1,6, 2, 'pblshr6'),
(2000, 'sourceName24', 1, 0,6, 4, 'pblshr7'),
(2000, 'sourceName25', 0, 0,6, 5, 'pblshr6'),
(2000, 'sourceName26', 0, 0,6, 6, 'pblshr7'),
(2000, 'sourceName27', 0, 0,6, 4, 'pblshr7'),
(2000, 'sourceName28', 0, 0,6, 5, 'pblshr7'),
(2000, 'sourceName29', 1, 0,6, 9, 'pblshr6'),
(2000, 'sourceName30', 0, 0,6, 3, 'pblshr7'),

(2000, 'sourceName31', 0, 0,1, 1, 'pblshr8'),
(2000, 'sourceName32', 0, 0,1, 2, 'pblshr9'),
(2000, 'sourceName33', 0, 0,1, 2, 'pblshr1'),
(2000, 'sourceName34', 1, 1,1, 4, 'pblshr1'),
(2000, 'sourceName35', 1, 0,1, 3, 'pblshr1'),
(2000, 'sourceName36', 0, 0,1, 3, 'pblshr8'),
(2000, 'sourceName37', 1, 1,1, 11, 'pblshr8'),
(2000, 'sourceName38', 0, 0,1, 3, 'pblshr8'),
(2000, 'sourceName39', 1, 1,1, 9, 'pblshr9'),
(2000, 'sourceName40', 1, 0,1, 10, 'pblshr1');
insert into multimedia (Callnumber, time, type, tpcName) VALUES ##########3
(1,101, 'type1','topic1'),
(2,102, 'type2','topic2'),
(3,103, 'type3','topic3'),
(4,204, 'type4','topic3'),
(5,100, 'type2','topic1'),
(6,166, 'type2','topic2'),
(7,101, 'type1','topic3'),
(8,208, 'type2','topic1'),
(9,309, 'type3','topic1'),
(10,110, 'type4','topic2');
insert into book (Callnumber, isReference, color, handwrittenORprinted, tpcName, translateof) values ##############
(11, 0,0, 0, 'topic6', NULL),
(12, 0,0, 0, 'topic7', NULL),
(13, 1,1, 0, 'topic8', NULL),
(14, 0,0, 0, 'topic9', 11),
(15, 1,1, 0, 'topic10', NULL),
(16, 0,0, 0, 'topic10', null),
(17, 1,0, 1, 'topic6', 14),
(18, 0,1, 0, 'topic3', null),
(19, 0,1, 0, 'topic4', null),
(20, 0,1, 0, 'topic1', 13);
insert into periodical (Callnumber, cycle, sub, prevCallNumber) values ###############
(21, 1,'type1', null),
(22, 2,'type2', 21),
(23, 1,'type3', 22),
(24, 1,'type4', 23),
(25, 2,'type5', 24),
(26, 3,'type6', 25),
(27, 4,'type7', 26),
(28, 2,'type8', 27),
(29, 5,'type9', 28),
(30, 5,'type10', 29);
insert into atlas (Callnumber, scale, type, area) values
(31, 100, 1, 'area2'),
(32, 20, 2, 'area4'),
(33, 3000, 3, 'area6'),
(34, 10000, 2, 'area4'),
(35, 500, 1, 'area10'),
(36, 1000, 2, 'area2'),
(37, 10000, 3, 'area14'),
(38, 2000, 1, 'area6'),
(39, 3000, 1, 'area8'),
(40, 1500, 2, 'area24');
insert into worksOn (pblshname, tpcName) VALUES
('pblshr1', 'topic1'),
('pblshr2', 'topic2'),
('pblshr3', 'topic3'),
('pblshr4', 'topic4'),
('pblshr5', 'topic5'),
('pblshr6', 'topic6'),
('pblshr7', 'topic7'),
('pblshr8', 'topic8'),
('pblshr9', 'topic9'),
('pblshr10', 'topic10'),
('pblshr1', 'topic2'),
('pblshr2', 'topic3'),
('pblshr3', 'topic5'),
('pblshr4', 'topic6');
insert into amphitheater (libraryName, amphName, numofchairs) VALUES
('library1', 'amphName1', 100),
('library2', 'amphName2', 200),
('library1', 'amphName2', 30),
('library4', 'amphName1', 300),
('library4', 'amphName2', 500),
('library4', 'amphName3', 500),
('library7', 'amphName1', 100),
('library8', 'amphName1', 200),
('library9', 'amphName1', 300),
('library10', 'amphName1', 100);
insert into bulletin (libraryName, topic, start, end, owner, workerID) VALUES
('library2','topic1', '2021-2-1','2021-2-28', 'ownerName1', 2),
('library1','topic2', '2021-8-3',null, 'ownerName2', 3),
('library5','topic4', '2021-8-4','2021-8-28', 'ownerName3', 4),
('library2','topic4', '2021-2-1',null, 'ownerName4', 5),
('library1','topic5', '2021-7-20',null, 'ownerName5', 1),
('library4','topic2', '2021-3-1','2021-3-28', 'ownerName6', 2),
('library2','topic7', '2021-7-1',null, 'ownerName7', 3),
('library1','topic8', '2021-2-1','2021-2-2', 'ownerName8', 4),
('library7','topic2', '2021-8-1',null, 'ownerName9', 5),
('library2','topic4', '2021-8-11',null, 'ownerName10', 1);
insert into belong (libraryName, Callnumber) VALUES
('library2',1),
('library3',2),
('library4',3),
('library5',4),
('library6',5),
('library7',6),
('library1',7),
('library2',8),
('library3',9),
('library4',10),
('library4',11),
('library1',12),
('library2',13),
('library3',14),
('library4',15),
('library1',16),
('library2',17),
('library3',18),
('library4',19),
('library1',20),
('library2',21),
('library3',22),
('library4',23),
('library1',24),
('library2',25),
('library3',26),
('library4',27),
('library1',28),
('library2',29),
('library3',30),
('library4',31),
('library1',32),
('library2',33),
('library3',34),
('library4',35),
('library1',36),
('library2',37),
('library3',38),
('library4',39),
('library1',40);
insert into readingRoom (libraryName, open, close, gender, type) VALUES
('library2', '7:00:00', '19:00:00', 2,1),
('library3', '7:00:00', '19:00:00', 1,1),
('library4', '7:00:00', '19:00:00', 2,1),
('library5', '7:00:00', '19:00:00', 2,1),
('library1', '7:00:00', '19:00:00', 1,1),
('library2', '7:00:00', '19:00:00', 2,1),
('library3', '7:00:00', '19:00:00', 2,1),
('library4', '7:00:00', '19:00:00', 0,1),
('library5', '7:00:00', '19:00:00', 2,1),
('library1', '7:00:00', '19:00:00', 2,1),

('library2', '7:00:00', '13:00:00', 0,5),
('library3', '7:00:00', '13:00:00', 1,5),
('library4', '7:00:00', '13:00:00', 0,5),
('library5', '7:00:00', '13:00:00', 1,5),
('library1', '7:00:00', '13:00:00', 1,5),
('library2', '7:00:00', '13:00:00', 2,5),
('library3', '7:00:00', '13:00:00', 0,5),
('library4', '7:00:00', '13:00:00', 0,5),
('library5', '7:00:00', '13:00:00', 2,5),
('library1', '7:00:00', '13:00:00', 2,5),

('library2', '7:00:00', '19:00:00', 0,2),
('library3', '7:00:00', '19:00:00', 1,3),
('library4', '7:00:00', '19:00:00', 0,4),
('library5', '7:00:00', '19:00:00', 1,2),
('library1', '7:00:00', '19:00:00', 1,3);
insert into kidsRoom (libraryName, age) VALUES
('library2', 3),
('library3',5),
('library4', 11),
('library5', 3),
('library1', 12),
('library2', 12),
('library3', 5),
('library4', 5),
('library5', 7),
('library1', 7);
insert into multimediaRoom (libraryName, numOfComp) VALUES
('library2',10),
('library3',20),
('library4',20),
('library5',20),
('library1',15),
('library2',40),
('library3',40),
('library4',40),
('library5',30),
('library1',30);

insert into chairANDtable (type, roomnum, libraryName, num) VALUES
(5,1,'library2', 10),
(5,2,'library3', 10),
(5,3,'library4', 15),
(5,4,'library5', 15),
(4,5,'library1', 20),
(4,6,'library2', 10),
(4,7,'library3', 17),
(9,8,'library4', 17),
(9,9,'library5', 17),
(9,10,'library1',17),
(1,1,'library2', 11),


(1,11,'library2', 5),
(1,12,'library3', 15),
(1,13,'library4', 50),
(1,14,'library5', 15),
(2,15,'library1', 15),
(2,16,'library2', 25),
(1,17,'library3', 5),
(2,18,'library4', 5),
(2,19,'library5', 25),
(2,20,'library1', 25),

(2,21,'library2', 20),
(2,22,'library3', 13),
(1,23,'library4', 24),
(1,24,'library5', 12),
(5,25,'library1', 13);

insert into creator (creatorname, birthdate, deathdate) VALUES
('creator1', '1925','2000'),
('creator2', '1930',null),
('creator3', '1935',null),
('creator4', '1940',null),
('creator5', '1945',null),
('creator6', '1950',null),
('creator7', '1955',null),
('creator8', '1960',2020),
('creator9', '1965',null),
('creator10', '1970',null),

('creator11', '1975',null),
('creator12', '1980',null),
('creator13', '1985',null),
('creator14', '1990',null),
('creator15', '1995',null),
('creator16', '2000',null),
('creator17', '2005',null),
('creator18', '2010',null),
('creator19', '2015',null),
('creator20', '1920','2000'),

('creator21', '1925','2000'),
('creator22', '1930',null),
('creator23', '1935',null),
('creator24', '1940',null),
('creator25', '1945',null),
('creator26', '1950','2000'),
('creator27', '1955','1990'),
('creator28', '1960',null),
('creator29', '1965',null),
('creator30', '1970',null),

('creator31', '1975',null),
('creator32', '1980',null),
('creator33', '1985',null),
('creator34', '1990',null),
('creator35', '1995',null),
('creator36', '2000',null),
('creator37', '2005',null),
('creator38', '2010',null),
('creator39', '2015',null),
('creator40', '1920','2000');
insert into compiler (Callnumber, creatorid) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);
insert into speaks (Callnumber, creatorID) VALUES
(1,11),
(2,12),
(3,13),
(4,14),
(5,15),
(6,16),
(7,17),
(8,18),
(9,19),
(10,20);
insert into author (Callnumber, creatorid) values
(11,21),
(12,22),
(13,23),
(14,24),
(15,25),
(16,26),
(17,27),
(18,28),
(19,29),
(20,30);
insert into translate (Callnumber, creatorid) VALUES
(11,31),
(12,32),
(13,33),
(14,34),
(15,35),
(16,36),
(17,37),
(18,38),
(19,39),
(20,40);
insert into comment (Callnumber, memberID, grade, text) VALUES
(1,100001, 5, 'text1'),
(2,100002, 2, 'text2'),
(3,100003, 4, 'text3'),
(4,100004, 10, 'text4'),
(2,100001, 5, 'text5'),
(6,100006, 10, 'text6'),
(7,100002, 7, 'text7'),
(2,100008, 8, 'text8'),
(2,100003, 9, 'text9'),
(1,100005, 10, 'text10');
insert into hold (Callnumber, memberID, startHold, endHold) VALUES
(1, 100007,'2021-7-1', '2021-6-1'),
(2, 100002,'2021-7-1', '2021-3-1'),
(3, 100003,'2021-7-1', '2021-2-15'),
(4, 100007,'2021-7-1', null),
(5, 100005,'2021-2-1', null),
(6, 100006,'2021-7-1', '2021-12-1'),
(7, 100007,'2021-7-1', '2021-2-1'),
(8, 100008,'2021-8-1', null),
(9, 100010,'2021-7-1', '2021-2-1'),
(10, 100010,'2021-8-1', null);
insert into reservation (libraryName, amphName, name, date, organizer, needreserve) VALUES
('library2', 'amphName2', 'name1', '2020-1-1', 'organizer1',1),
('library2', 'amphName2', 'name2', '2020-1-2', 'organizer2',1),
('library1', 'amphName1', 'name3', '2021-1-3', 'organizer3',1),
('library2', 'amphName2', 'name4', '2021-1-4', 'organizer4',1),
('library4', 'amphName3', 'name5', '2021-5-1', 'organizer5',1),
('library1', 'amphName1', 'name6', '2021-4-1', 'organizer6',1),
('library2', 'amphName2', 'name7', '2021-3-1', 'organizer7',0),
('library10', 'amphName1', 'name8', '2021-10-1', 'organizer8',1),
('library1', 'amphName1', 'name9', '2021-11-1', 'organizer9',0),
('library2', 'amphName2', 'name10', '2021-1-19', 'organizer10',0);

insert into participating (email, Reservationnum, libraryName, amphName) VALUES
('Participating1@gmail.com',1,'library2', 'amphName2'),
('Participating2@gmail.com',2,'library2', 'amphName2'),
('Participating3@gmail.com',3,'library1', 'amphName1'),
('Participating4@gmail.com',4,'library2', 'amphName2'),
('Participating5@gmail.com',5,'library4', 'amphName3'),
('Participating1@gmail.com',6,'library1', 'amphName1'),
('Participating1@gmail.com',7,'library2', 'amphName2'),
('Participating8@gmail.com',8,'library10', 'amphName1'),
('Participating2@gmail.com',9,'library1', 'amphName1'),
('Participating1@gmail.com',10,'library2', 'amphName2');

