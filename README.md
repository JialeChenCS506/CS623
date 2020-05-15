# CS623
PART 1:
Creates the schema of paperreview database:

1.firstly install mysql and set the environment variables, in advance setting and make sure 
we can use the command line to run it, just like setting jdk.

2.after installing mysql, I started to create the schema following by the ER diagram of 3.34, including AUTHOR, REVIEW, 
REVIEWER,REVIEWTOPIC.

3.Using the select * from to look for the table we created and take advantage of the screencast to record it.



Part 2: java application

Queries:
1.return the some columns of paper and author tables;
2.Get all review and data of that
3.use a count method
4.cretate(insert) new paper submission in both author and paper, I realized I made some mistakes in the original tables and redo it again by recording a new cast.
5.delete first row by authorid, successful reason: not sure but I use the excute(sql) instead of the excutequery(sql), beside, I did not assign the foreign key among all the attributes in author table.

Step:
1. jdk already installed;
2.download the independent platform of J connector,
3.write java code 
4.run and doublecheck


The schema has been several times when I realiazed some evident errors.
 "ResultSet rs = stmt.executeQuery(sql)" is mainly used for the queries and "stmt.execute(sql)" is for the last 2 queries.
About the create and insert part, I used the"//" to cover the code in case of some compile errors.
