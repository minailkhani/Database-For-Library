drop database if exists project ;
create database project ;
use project ;

create table safeDepositBox #2
(
    boxID int unsigned auto_increment primary key
);

create table gender #3-1
(
    name varchar(20) primary key,
    gender bool not null -- 0:men  1:women
);

create table library
(
    libraryName varchar(20) primary key ,
    address varchar(20) not null ,
    foundationYear year,
    cafe bool
);
create table topic
(
    topicName varchar(20) primary key
);
create table stack
(
    stackID int unsigned auto_increment primary key
);
create table publisher
(
    pblshrName varchar(20) primary key,
    address varchar(20),
    foundDate year,
    manager varchar(20)
);
create table participatingNameMail
(
    email varchar(30) primary key ,
    name varchar(20) not null
);
create table worker #1
(
    workerID int unsigned auto_increment primary key ,
    name varchar(20),
    responsibility  varchar(20) not null ,
    libraryName varchar(20) not null ,
    foreign key (libraryName) references library(libraryName) on delete cascade
);

create table patron
(
    memberID int unsigned primary key ,
    name varchar(20),
    expiration date,
    joinDare date not null ,
    foreign key (name) references gender(name) on delete cascade
);
create table registerInf
(
    NationalID int unsigned primary key ,
    job varchar(20) not null ,
    address varchar(20)not null ,
    Maritalstatus bool not null ,#0 for single and 1 for Married
    physicalcondition varchar(20)not null ,
    email varchar(20) not null ,
    password int unsigned not null ,
    cellphoneNUM int unsigned not null ,
    phoneNum int unsigned not null ,
    fathername varchar(20) not null ,
    birthday DATE not null ,
    foreign key (NationalID) references patron(memberID) on delete cascade

    );
create table deposit
(
    id int unsigned auto_increment primary key ,
    workerID int unsigned,
    boxID int unsigned,
    memberID int unsigned ,
    start date,
    end date,
    foreign key (workerID) references worker(workerID) on delete cascade,
    foreign key (boxID) references safeDepositBox(boxID) on delete cascade,
    foreign key (memberID) references patron(memberID) on delete cascade

);
create table owner
(
    email varchar(20) primary key ,
    libraryName varchar(20),
    name varchar(20),
    phone int unsigned ,
    foreign key (libraryName) references library(libraryName) on delete cascade

);
create table register
(
    libraryName varchar(20),
    memberID int unsigned,
    primary key (libraryName, memberID),
    foreign key (libraryName) references library(libraryName) on delete cascade,
    foreign key (memberID) references patron(memberID) on delete cascade

);
create table isInByTopic
(
    tpcName varchar(20),
    stackNum int unsigned,
    foreign key (tpcName) references topic(topicName) on delete cascade,
    foreign key (stackNum) references stack(stackID) on delete cascade
);
create table source #40
(
    CallNumber int unsigned primary key auto_increment,
    publicationdate year not null ,
    name varchar(20) not null ,
    holdable tinyint not null , # 1:holdable 0: not holdable  2 : holdable but in holyday constraint
    isonhold bool not null ,
    stackNUM int unsigned ,
    line int unsigned,
    publName varchar(20) ,
    donatebymember int unsigned ,
    foreign key (stackNum) references stack(stackID) on delete cascade,
    foreign key (publName) references publisher(pblshrName) on delete cascade,
    foreign key (donatebymember) references patron(memberID) on delete cascade
);
create table multimedia ##########3
(
    Callnumber int unsigned primary key ,
    time int unsigned,#min
    type varchar(20) not null ,
    tpcName varchar(20) ,
    foreign key (Callnumber) references source(CallNumber) on delete cascade,
    foreign key (tpcName) references topic(topicName) on delete cascade
);
create table book ##############
(
    Callnumber int unsigned primary key ,
    isReference bool,
    color bool,
    handwrittenORprinted bool, #0:handwritten     1:printed
    tpcName varchar(20),
    translateof int unsigned ,
    foreign key (Callnumber) references source(CallNumber) on delete cascade,
    foreign key (tpcName) references topic(topicName) on delete cascade,
    foreign key (translateof) references book(Callnumber) on delete cascade
);
create table atlas ###############
(
    Callnumber int unsigned primary key ,
    scale int unsigned, #i := ikm
    type varchar(20),
    area varchar(20),
    foreign key (Callnumber) references source(CallNumber) on delete cascade
);

create table periodical  ###############
(
    Callnumber int unsigned primary key ,
    cycle tinyint unsigned, #1:Daily 2:Weekly 3:Monthly 4:yearly 5:10 annual
    sub varchar(20),
    prevCallNumber int unsigned,
    foreign key (Callnumber) references source(CallNumber) on delete cascade,
    foreign key (prevCallNumber) references periodical(CallNumber) on delete cascade
);

create table worksOn
(
    pblshname varchar(20),
    tpcName varchar(20),
    primary key (pblshname,tpcName),
    foreign key (pblshname) references publisher(pblshrName) on delete cascade,
    foreign key (tpcName) references topic(topicName) on delete cascade
);

create table Amphitheater
(
    libraryName varchar(20) ,
    amphName varchar(20),
    numofchairs int unsigned ,
    primary key (libraryName, amphName),
    foreign key (libraryName) references library(libraryName) on delete cascade
);

create table Reservation
(
    ReservationNum int unsigned auto_increment ,
    libraryName varchar(20),
    amphName varchar(20),
    name varchar(20),
    date date ,
    organizer varchar(20),
    needreserve bool,
    primary key (ReservationNum,libraryName, amphName),
    foreign key (libraryName,amphName) references Amphitheater(libraryName, amphName)  on delete cascade
);

create table Bulletin
(
    BltnID int unsigned auto_increment ,
    libraryName varchar(20),
    topic varchar(20),
    start date,
    end date ,
    owner varchar(20),
    workerID int unsigned,
    primary key (BltnID, libraryName),
    foreign key (libraryName) references library(libraryName) on delete cascade,
    foreign key (workerID) references worker(workerID) on delete cascade

);

create table Belong
(
    libraryName varchar(20),
    Callnumber int unsigned,
    primary key (libraryName, Callnumber),
    foreign key (libraryName) references library(libraryName) on delete cascade,
    foreign key (Callnumber) references source(CallNumber) on delete cascade
);

create table readingRoom #balaye 20
(
    roomnum int unsigned auto_increment,
    libraryName varchar(20) ,
    open time,
    close time,
    gender tinyint unsigned,-- 0:men 1:women 2: both
    type tinyint unsigned, -- 0:normal, 1:kid, 2:blinds 3:Research1 4:Research group 5:multimedia
    primary key (roomnum,libraryName),
    foreign key (libraryName) references library(libraryName) on delete cascade
);
create table kidsRoom #############
(
    roomnum int unsigned auto_increment,
    libraryName varchar(20) ,
    age tinyint unsigned, -- older than that age
    primary key (roomnum,libraryName),
    foreign key (roomnum, libraryName) references readingRoom(roomnum, libraryName) on delete cascade
);
create table multimediaRoom  #############
(
    roomnum int unsigned auto_increment,
    libraryName varchar(20) ,
    numOfComp tinyint unsigned ,
    primary key (roomnum,libraryName),
    foreign key (roomnum, libraryName) references readingRoom(roomnum, libraryName) on delete cascade
);
create table chairANDtable
(
    type varchar(20), -- number of chairs is it's type
    roomnum int unsigned ,
    libraryName varchar(20),
    num int unsigned not null ,
    primary key (type, roomnum, libraryName),
    foreign key (roomnum, libraryName) references readingRoom(roomnum, libraryName) on delete cascade
);

create table creator #40
(
    ID int unsigned auto_increment primary key ,
    creatorname varchar(20) ,
    birthdate year,
    deathdate year,
    age tinyint unsigned
);
create table compiler ##############
(
    Callnumber int unsigned,
    creatorid int unsigned,
    primary key (Callnumber,creatorid),
    foreign key (Callnumber) references multimedia(CallNumber) on delete cascade,
    foreign key (creatorid) references creator(id) on delete cascade
);

create table speaks ###############
(
    Callnumber int unsigned,
    creatorID int unsigned,
    primary key (Callnumber,creatorid),
    foreign key (Callnumber) references multimedia(CallNumber) on delete cascade,
    foreign key (creatorid) references creator(id) on delete cascade
);
create table author ###############
(
    Callnumber int unsigned,
    creatorid int unsigned,
    primary key (Callnumber,creatorid),
    foreign key (Callnumber) references book(CallNumber) on delete cascade,
    foreign key (creatorid) references creator(id) on delete cascade
);
create table translate ###########
(
    Callnumber int unsigned,
    creatorid int unsigned,
    primary key (Callnumber,creatorid),
    foreign key (Callnumber) references book(CallNumber) on delete cascade,
    foreign key (creatorid) references creator(id) on delete cascade
);
create table comment
(
    Callnumber int unsigned,
    memberID int unsigned,
    grade tinyint unsigned,
    text varchar(50),
    primary key (Callnumber,memberID),
    foreign key (Callnumber) references source(CallNumber) on delete cascade,
    foreign key (memberID) references patron(memberID) on delete cascade
);
create table hold
(
    Callnumber int unsigned,
    memberID int unsigned ,
    startHold date not null ,
    endHold date ,
    primary key (Callnumber,memberID,startHold),
    foreign key (Callnumber) references source(CallNumber) on delete cascade,
    foreign key (memberID) references patron(memberID) on delete cascade
);

create table Participating
(
    email varchar(30) ,
    Reservationnum int unsigned,
    libraryName varchar(20),
    amphName varchar(20),
    primary key (email,Reservationnum,libraryName,amphName),
    foreign key (email) references participatingNameMail(email) on delete cascade,
    foreign key (Reservationnum,libraryName,amphName) references reservation(reservationnum, libraryname, amphname)  on delete cascade
);
