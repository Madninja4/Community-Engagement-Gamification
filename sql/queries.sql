
#view all users and hashsed passwords
select username,passwordMD5 from users;
#view all users and IDs
select username,userID from users;

select i.initName,u.username
from initiatives i, users u
where i.creator = u.userID
and i.creatorType = 'user';

select i.initName,o.orgName as orgName
from initiatives i, organizations o
where i.creator = o.orgID
and i.creatorType = 'org';

select o.orgName,u.username
from organizations o, users u, orgMember m
where m.orgID = o.OrgID
and m.UserID = u.userID;


select initName,amountDonated from initiatives;


select u.username,o.orgName,r.rating,re.reviewText
from organizations o, users u, orgRatings r, orgReviews re
where u.userID = r.userID
and o.orgID = r.orgID
and re.reviewerID = u.UserID;

#see when all members joined
select username,dateJoined from users;

#see all tags on org initiatives
select i.initName,t.tagName
from tags t, initiatives i, initTags it
where t.tagID = it.tagID
and i.initID = it.initID
and i.creatorType = 'org';

#see all tags on neighbor clean up
select i.initName,t.tagName
from tags t, initiatives i, initTags it
where t.tagID = it.tagID
and i.initID = it.initID
and i.initID = 1;

#See all user hours
select username,volHours from users;

select * from users;
select * from initiatives;
select * from organizations;
select * from itemInit;
