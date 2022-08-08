<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	try{
		Connection con=ConnectionProvider.getCon();
		
		Statement st=con.createStatement();
		//String q1="create table user(userBalance int,userName varchar(100),gender varchar(100),city varchar(100),homeAddress varchar(100),postalCode varchar(100),contactTelephone varchar(100),email varchar(100)primary key,userAccount varchar(100),userPassword varchar(100) )";
		 String q2="create table transaction(id int,transactionAmount int,userName varchar(100),transactionDate varchar(100),active varchar(10))";
		String q3="create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(500),PRIMARY KEY(id) )";
		// 		System.out.println(q1);
 		//System.out.println(q2);
		System.out.println(q3); 
		//st.execute(q1);
		//st.execute(q2);
		 st.execute(q3); 
		System.out.println("Table Created");
		con.close();
		
	}catch(Exception e)
{
	System.out.println(e);		
}
%>
