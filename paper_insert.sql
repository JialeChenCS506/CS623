INSERT INTO author (emailaddr, firstname, lastname) VALUES
('ab@gmail.com', 'a', 'b'),
('c.d@gmail.com', 'c', 'd'),
('e.f@gmail.com', 'e', 'f'),
('g.h@gmail.com', 'g', 'h');




INSERT INTO reviewer (emailaddr, firstname, lastname, phonenum, affiliation) VALUES
('manutd@gmail.com', 'man', 'utd', 178, NULL),
('MANCIT@gmail.com', 'MAN', 'CIT', 888, NULL),
('LBQ@gmail.com', 'LEBR', 'QYNN', 444, NULL),
('CTE@gmail.com', 'Caster', 'TElika', 654, NULL);




INSERT INTO paper (paperid, title, abstract, filename, contactemailAddr) VALUES
(1, 'ssdaaff', NULL, NULL, 'manutdgmail.com'),
(3, 'phdasdaa', NULL, NULL, 'misaka.mija@gmail.com'),
(4, 'lcksv', NULL, NULL, 'LBQ@gmail'),
(7, 'tsanm', NULL, NULL, 'g.h@gmail.com');

INSERT INTO Review (reviewId, paperId, techMeritScore, readabilityScore, originalityScore, relevanceScore, reviewerEmailAddr, recommendation, authorFeedback, commiteeFeedback)
 VALUES (1, 1, 8, 8, 8, 8, 'ab@gmail.com', NULL, NULL, NULL),
(2, 1, 8, 8, 8, 8, 'c.d@gmail.comom', NULL, NULL, NULL),
(3, 2, 8, 8, 8, 8, 'e.f@gmail.com.com', NULL, NULL, NULL),
(4, 2, 8, 8, 8, 8, 'g.h@gmail.coml@gmail.com', NULL, NULL, NULL);




INSERT INTO Topic (topicid, topicname) VALUES
(1, 'Game'),
(2, 'movie'),
(3, 'peace'),
(4, 'sports'),
(5, 'music');


INSERT INTO reviewerTopics (EmailAddr, TopicId) VALUES
('ab@gmail.com', 1),
('e.f@gmail@gmail.com', 1),
('b.c@gmail.com', 2),
('c.d@gmail.com', 2),
('ab@gmail.com', 4);