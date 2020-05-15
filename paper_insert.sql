





INSERT INTO author (emailaddr, firstname, lastname) VALUES
('ab@gmail.com', 'a', 'b'),
('c.d@gmail.com', 'c', 'd'),
('e.f@gmail.com', 'e', 'f'),
('g.h@gmail.com', 'g', 'h');








INSERT INTO paper (paperid, title, abstracts, filename) VALUES
(1, 'ssdaaff', NULL, NULL),
(3, 'phdasdaa', NULL, NULL),
(4, 'lcksv', NULL, NULL),
(7, 'tsanm', NULL, NULL);




 



INSERT INTO review (reviewid, paperid, meritscore, readabilityscore, originalityscore, relevancescore, revieweremailAddr, recommendation, authorfeedback, commiteefeedback)
 VALUES (5, 1, 8, 8, 8, 8, 'manutd@gmail.com', NULL, NULL, NULL),
(6, 3, 8, 8, 8, 8, 'MANCIT@gmail.com', NULL, NULL, NULL),
(8, 4, 8, 8, 8, 8, 'LBQ@gmail.com','published', NULL, NULL),
(9, 7, 8, 8, 8, 8, 'CTE@gmail.com', 'published', NULL, NULL);



INSERT INTO reviewer (emailaddr, firstname, lastname, phonnum, affiliation,authorfeedback , commiteefeedback) VALUES
('manutd@gmail.com', 'man', 'utd',  178, NULL,NULL, NULL),
('MANCIT@gmail.com', 'MAN', 'CIT', 888, NULL,NULL,NULL),
('LBQ@gmail.com', 'LEBR', 'Q', 444, NULL,NULL,NULL),
('CTE@gmail.com', 'Caster', 'Elika', 654, NULL,NULL,NULL);







INSERT INTO Topic (topicid, topicname) VALUES
(1, 'Game'),
(2, 'movie'),
(3, 'peace'),
(4, 'sports'),
(5, 'music');





INSERT INTO reviewerTopics (EmailAddr, TopicId) VALUES
('manutd@gmail.com', 1),
('CTE@gmail.com', 1),
('MANCIT@gmail.com', 2),
('LBQ@gmail.com', 2),
('manutd@gmail.com', 4);

