import java.sql.*;
public class PaperReviewProject {

	
	 static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    static final String DB_URL = "jdbc:mysql://localhost:3306/paperreviews";
	
	    static final String USER = "root";
	    static final String PASS = "asd1010555";
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Connection conn = null;
        Statement stmt = null;
		
		
		
		try{
           
            Class.forName(JDBC_DRIVER);
        
            
            System.out.println("connect to database...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
        
            
            System.out.println("displaying author tables ");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT emailaddr, firstname, lastname FROM author";
            ResultSet rs = stmt.executeQuery(sql);
        
            
            while(rs.next()){
                
                String emailaddr  = rs.getString("emailaddr");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
    
                // print out results
                System.out.print("email address: " + emailaddr);
                System.out.print("fistname: " + firstname);
                System.out.print("lastname: " + lastname);
                System.out.print("\n");
                System.out.println();
            }
            
            System.out.println();
            System.out.println("displaying paper tables ");
            stmt = conn.createStatement();
            
            sql = "SELECT paperid, title, filename,abstracts FROM paper";
            ResultSet rs1 = stmt.executeQuery(sql);
        
            
            while(rs1.next()){
                
                String paperid  = rs1.getString("paperid");
                String title = rs1.getString("title");
                String filename = rs1.getString("filename");
                String abstracts = rs1.getString("abstracts");
                // print out results
                System.out.print("paperid: " + paperid);
                System.out.print("title: " + title);
                System.out.print("filename: " + filename);
                System.out.print("\n");
                System.out.println();
            }
            System.out.println();
            System.out.println("get all paperid when they are recommended to be published");
            stmt = conn.createStatement();
            sql = "SELECT paperid\r\n" + 
            		"FROM review\r\n" + 
            		"WHERE review.recommendation='published'\r\n" + 
            		"\r\n" + 
            		"";
            ResultSet rs2 = stmt.executeQuery(sql);
            while(rs2.next()){
                    
            int paperid2  = rs2.getInt("paperid");
           
            
            
            System.out.print("paperid: " + paperid2);
            
            System.out.print("\n");
            }
            System.out.println();
            System.out.println("get all reviews when paperid are equal 1 or 4");
            
             stmt = conn.createStatement();
            
            sql = "\r\n" + 
            		"SELECT reviewid, meritscore, readabilityscore, originalityscore, relevancescore, revieweremailAddr, authorfeedback, commiteefeedback\r\n" + 
            		"FROM review\r\n" + 
            		"WHERE review.paperid=1 or review.paperid=4";
            ResultSet rs3 = stmt.executeQuery(sql);
        
            
            while(rs3.next()){
            	int meritscore  = rs3.getInt("meritscore");
                int readabilityscore  = rs3.getInt("readabilityscore");
                int originalityscore  = rs3.getInt("originalityscore");
                int relevancescore  = rs3.getInt("relevancescore");
                String authorfeedback  = rs3.getString("authorfeedback");
                String commiteefeedback  = rs3.getString("commiteefeedback");

                System.out.print("meritscore: " + meritscore);
                System.out.print("readabilityscore: " + readabilityscore);
                System.out.print("originalityscore: " + originalityscore);
                System.out.print("relevancescore: " + relevancescore);
                System.out.print("authorfeedback: " +authorfeedback);
                System.out.print("commiteefeedback: " + commiteefeedback);
             
                
                System.out.print("\n");
                System.out.println();
            }
            System.out.println();
            System.out.println("get count of all the paper submitted ");
            
            stmt = conn.createStatement();
           
           sql = "SELECT count(*) FROM review";
           ResultSet rs4 = stmt.executeQuery(sql);
           while(rs4.next()){
           	
        	   int rowCount = rs4.getInt(1);
        	   System.out.print("all submitted paper: " + rowCount);
            
            
        	   System.out.print("\n");
           }
           
           System.out.println();
           System.out.println("update a new paper submisstion，including author and paper tables ");
           
          
              //stmt = conn.createStatement();
           
        //sql="insert into paper (paperid,title,abstracts,lastname,filename) values(2,'bbbbb',NULL,NULL)";
          //stmt.execute(sql);
        	//System.out.print("\n");
           
           
          // stmt = conn.createStatement();
           
           //sql="insert into author (authorid,emailaddr,firstname,lastname) values(2,'jb@gmail.com','j','b')";
           //stmt.execute(sql);
        	   //System.out.print("\n");
           
          
        	   
        	   System.out.println("delete the first row of author by author's id ");
               
        	  // stmt = conn.createStatement();
        	   //sql="delete from paperreviews.author where authorid =1  ";
        	   //stmt.execute(sql);
        	   
            rs.close();
            stmt.close();
            conn.close();
        }catch(SQLException se){
            
            se.printStackTrace();
        }catch(Exception e){
            
            e.printStackTrace();
        }finally{
            
            try{
                if(stmt!=null) stmt.close();
            }catch(SQLException se2){
            }
            try{
                if(conn!=null) conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        System.out.println("Goodbye!");
		
		
		
	}

}
