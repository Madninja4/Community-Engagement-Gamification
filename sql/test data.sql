
# User Creation
insert into users (username,passwordMD5,email,firstname,lastname,profPic) 
values 
('anonymous','null','null','anonymous','anonymous',null),
('alice',MD5('Pa$$w0rd'),'alice@example.com','alice','meh','alice.jpg'),
('bob','1a1dc91c907325c69271ddf0c944bc72','bob@example.com','bob','meh','bob.jpg'),
('carol','1a1dc91c907325c69271ddf0c944bc72','carol@example.com','carol','meh','carol.jpg'),
('dan','1a1dc91c907325c69271ddf0c944bc72','dan@example.com','dan','meh','dan.jpg'),
('eve','1a1dc91c907325c69271ddf0c944bc72','eve@example.com','eve','meh','eve.jpg'),
('frank','1a1dc91c907325c69271ddf0c944bc72','frank@example.com','frank','meh','frank.jpg'),
('grace','1a1dc91c907325c69271ddf0c944bc72','grace@example.com','grace','meh','grace.jpg'),
('heidi','1a1dc91c907325c69271ddf0c944bc72','heidi@example.com','heidi','meh','heidi.jpg'),
 ('ivan','1a1dc91c907325c69271ddf0c944bc72','ivan@example.com','ivan','meh','ivan.jpg'),
('mallory','1a1dc91c907325c69271ddf0c944bc72','mallory@example.com','mallory','meh','mallory.jpg'),
('mike','1a1dc91c907325c69271ddf0c944bc72','mike@example.com','mike','meh','mike.jpg'),
('oscar','1a1dc91c907325c69271ddf0c944bc72','oscar@example.com','oscar','meh','oscar.jpg'),
('pablo','1a1dc91c907325c69271ddf0c944bc72','pablo@example.com','pablo','meh','pablo.jpg'),
('xavier','1a1dc91c907325c69271ddf0c944bc72','xavier@example.com','xavier','meh','xavier.jpg');

#superusers and moderators
insert into users (username,passwordMD5,email,firstname,lastname,profPic,superuser) 
values ('judy','1a1dc91c907325c69271ddf0c944bc72','judy@example.com','judy','meh','judy.jpg',1);

#Intitiative Creation -- user 
insert into initiatives (initName, initDesc, donationType, amountNeeded, creatorType, creator, about , location , initDatetime, duration, endTime)
values ("clean up neighbor's yard", 'My neighbor needs his yard cleaned', 'volunteer', 5, 'user', 1, 'stuff', 'muncie', '2019-10-20 07:15:00',0,'10:30:00');

#Organization Creation
insert into organizations (adminID, orgName) values (4, 'Dan Inc.');
insert into organizations (adminID, orgName) values (2, 'Ball State');

#Orginizational admin additions
insert into orgMember (orgID,userID) values (1,4);
insert into orgMember (orgID,userID) values (1,1);
insert into orgMember (orgID,userID) values (1,13);
insert into orgMember (orgID,userID) values (2,13);

#Intitiative Creation -- organization
insert into initiatives (initName, initDesc, donationType, amountNeeded, creatorType, creator, about, location,duration)
values ('cancer research', 'donation for cancer research', 'money', 10000, 'org', 1, 'stuff', 'Indianapolis',10);

insert into initiatives (initName, initDesc, donationType, amountNeeded, creatorType, creator, about, location,duration)
values ('Ball State Food drive', 'food for students since we steal all of their money', 'items', 300, 'org', 2, 'stuff', 'Muncie',10);
insert into itemInit (initID, itemName,amountNeeded) values (3,'cans',300);

#tag creation
insert into tags (tagName) values ('cancer');
insert into tags (tagName) values ('research');
insert into tags (tagName) values ('Indianapolis');

insert into initTags (tagID, initID) values (1,2);
insert into initTags (tagID, initID) values (2,2);
insert into initTags (tagID, initID) values (3,2);

insert into tags (tagName) values ('cleanup');
insert into tags (tagName) values ('community');
insert into tags (tagName) values ('yard');
insert into tags (tagName) values ('muncie');

insert into initTags (tagID, initID) values (4,1);
insert into initTags (tagID, initID) values (5,1);
insert into initTags (tagID, initID) values (6,1);
insert into initTags (tagID, initID) values (7,1);

insert into tags (tagName) values ('food');
insert into tags (tagName) values ('canned food');
insert into tags (tagName) values ('drive');
insert into tags (tagName) values ('item donation');

insert into initTags (tagID, initID) values (8,3);
insert into initTags (tagID, initID) values (9,3);
insert into initTags (tagID, initID) values (10,3);
insert into initTags (tagID, initID) values (11,3);

#donation
update users set donMoney = 100 where userID = 12;
insert into donations (orgID,initID,userID,totalAmount) values (1,2,12,100);
insert into initiativeUser values(12,1);
update initiatives set amountDonated = amountDonated + 100 where initID = 2;

#review
insert into orgReviews (orgID, reviewerID, reviewText) values (1,12,'Great Company, not sure where money is going though');
insert into orgRatings (userID, orgID, rating) values (12,1,4);

#volunteer
update users set volHours = 1 where userID = 11;
insert into volunteer (initID,userID,totalHours) values (2,11,1);
insert into initiativeUser values(11,2);
update initiatives set amountDonated = amountDonated + 1 where initID = 1;

#review
insert into orgReviews (orgID, reviewerID, reviewText) values (1,11,'Bad Company');
insert into orgRatings (userID, orgID, rating) values (11,1,1); 

#donation
update users set donItem = 10 where userID = 12;
insert into donations (orgID,initID,userID,totalAmount) values (1,2,12,10);
update initiatives set amountDonated = amountDonated + 10 where initID = 3;
insert into initiativeUser values(12,3);
update itemInit set amountDonated = amountDonated + 10 where initID = 3;

#review
insert into orgReviews (orgID, reviewerID, reviewText) values (2,12,'Horrific University');
insert into orgRatings (userID, orgID, rating) values (12,2,1);

#aggregate reviews
update organizations set aggrating = 2.5 where orgID = 1;
update organizations set aggrating = 1 where orgID = 2;

#influence
insert into influence values (1,2);
