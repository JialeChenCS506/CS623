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
(1, 'ssdaaff', NULL, NULL, 'ab@gmail.com'),
(3, 'phdasdaa', NULL, NULL, 'c.d@gmail.com'),
(4, 'lcksv', NULL, NULL, 'e.f@gmail.com'),
(7, 'tsanm', NULL, NULL, 'g.h@gmail.com');

INSERT INTO Review (reviewId, paperId, techMeritScore, readabilityScore, originalityScore, relevanceScore, reviewerEmailAddr, recommendation, authorFeedback, commiteeFeedback)
 VALUES (1, 1, 8, 8, 8, 8, 'manutd@gmail.com', NULL, NULL, NULL),
(2, 3, 8, 8, 8, 8, 'MANCIT@gmail.com', NULL, NULL, NULL),
(3, 4, 8, 8, 8, 8, 'LBQ@gmail.com', NULL, NULL, NULL),
(4, 7, 8, 8, 8, 8, 'CTE@gmail.com', NULL, NULL, NULL);




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
