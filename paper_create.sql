create database paperreviews;
USE paperreviews;



create table author(authorid INTEGER(10), emailaddr VARCHAR(30), firstname VARCHAR(30), lastname VARCHAR(30),PRIMARY KEY(authorid));






create table paper(paperid INTEGER(10), title VARCHAR(30), abstracts VARCHAR(300), filename VARCHAR(30),PRIMARY KEY(paperid));




 create table review(reviewid INTEGER(10), recommendation VARCHAR(30),revieweremailAddr VARCHAR(30), meritscore INTEGER(10), readabilityscore INTEGER(10), originalityscore INTEGER(10),relevancescore INTEGER(10), paperid INTEGER(10), authorfeedback VARCHAR(30), commiteefeedback VARCHAR(30),PRIMARY KEY(reviewid));




create table reviewer(emailaddr VARCHAR(30) NOT NULL, firstname VARCHAR(30),lastname VARCHAR(30),phonnum INTEGER(10),affiliation VARCHAR(30), authorfeedback VARCHAR(30), commiteefeedback VARCHAR(30), PRIMARY KEY(emailaddr));




CREATE TABLE topic (topicid INTEGER(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,topicname VARCHAR(30));


create table reviewertopics (
emailaddr VARCHAR(30) NOT NULL,
topicid int(8) NOT NULL,
PRIMARY KEY (emailaddr,topicid),
FOREIGN KEY (emailaddr) REFERENCES reviewer(emailaddr),
FOREIGN KEY (topicid) REFERENCES topic(topicid)
);



