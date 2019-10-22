drop database betterflye;
create database betterflye;
use betterflye;


create table if not exists users (
username varchar(255) unique not null,
passwordMD5 varchar(255) not null,
email varchar(255) unique not null, 
firstname varchar(255) not null, 
lastname varchar(255) not null, 
userID int not null AUTO_INCREMENT, 
volHours int default 0, 
donMoney int default 0, 
donItem int default 0, 
impactNum int default 0, 
influence int default 0, 
profPic varchar(255),
dateJoined datetime DEFAULT NOW(),
superuser int not null default 0,
PRIMARY KEY (userID)
);

create table if not exists initiatives (
initName varchar(255) unique not null,
initDesc text,
donationType varchar(255) default 'money',
amountNeeded int,
amountDonated int default 0,
creatorType varchar(255),
creator int,
initID int not null AUTO_INCREMENT,
about varchar(255),
location varchar(255),
creationDate datetime DEFAULT NOW(),
initDatetime datetime,
duration int not null,
endDate date DEFAULT (DATE_ADD(IFNULL(initDatetime,creationDate),INTERVAL duration DAY)),
endTime time,
PRIMARY KEY (initID),
foreign key (creator) references users (userID)
);

create table if not exists itemInit (
initID int not null,
itemName varchar(255) not null,
itemID int not null AUTO_INCREMENT,
amountNeeded int not null,
amountDonated int not null default 0,
primary key (itemID),
foreign key (initID) references initiatives (initID)
);

create table if not exists tags(
tagName varchar(255) unique not null,
tagID int not null AUTO_INCREMENT,
PRIMARY KEY(tagID)
);

create table if not exists initTags(
tagID int not null,
initID int not null,
foreign key (tagID) references tags (tagID),
foreign key (initID) references initiatives (initID)
);

create table if not exists initiativeUser(
userID int not null,
initID int not null,
foreign key (userID) references users (userID),
foreign key (initID) references initiatives (initID)
);

create table if not exists organizations (
adminID int not null,
orgID int not null AUTO_INCREMENT,
orgName varchar(255) not null unique,
logo varchar(255),
socialLinks varchar(255),
volHours int default 0,
donItem int default 0,
donMoney int default 0,
aggRating int default 0,
PRIMARY KEY(orgID),
foreign key (adminID) references users (userID)
);

create table if not exists orgMember (
orgID int not null,
userID int not null,
foreign key (orgID) references organizations (orgID),
foreign key (userID) references users (userID)
);

create table if not exists volunteer (
orgID int,
initID int not null,
userID int not null,
totalHours int not null,
foreign key (orgID) references organizations (orgID),
foreign key (initID) references initiatives (initID),
foreign key (userID) references users (userID)
);

create table if not exists donations (
orgID int,
initID int not null,
userID int not null,
totalAmount int not null,
foreign key (orgID) references organizations (orgID),
foreign key (initID) references initiatives (initID)
);

create table if not exists userReviews (
userID int not null,
reviewerID int not null,
reviewText text not null,
foreign key (userID) references users (userID),
foreign key (reviewerID) references users (userID)
);

create table if not exists orgReviews (
orgID int not null,
reviewerID int not null,
reviewText text not null,
foreign key (reviewerID) references users (userID),
foreign key (orgID) references organizations (orgID)
);

create table if not exists orgRatings (
userID int not null,
orgID int not null,
rating int not null,
foreign key (userID) references users (userID),
foreign key (orgID) references organizations (orgID)
);

create table if not exists influence (
influencerID int not null,
influencedID int not null,
foreign key (influencerID) references users (userID),
foreign key (influencedID) references users (userID)
);

#indexing
create index login on users(username,passwordMD5);

