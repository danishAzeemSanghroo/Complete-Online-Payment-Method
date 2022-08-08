
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page import = "java.util.Date.*" %>


<!DOCTYPE html>
<html>

   <head>
      <title>Receipt</title>
   </head>
	
   <body>
<%
int userBalance=Integer.parseInt(request.getParameter("userBalance"));
String email=request.getParameter("email");
String userAccount=request.getParameter("userAccount");
String userPassword=request.getParameter("userPassword"); 
 int num=Integer.parseInt(request.getParameter("num")); 
String accountNumber=request.getParameter("accountNumber");
String password=request.getParameter("password");
try{
	
	
	if(accountNumber.equals(userAccount) && password.equals(userPassword) && userBalance>=num )
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("update user set userBalance="+(userBalance-num)+" where email='"+email+"' ");
	
	}
	else
	{
		out.println("Something went wrong try again");
	}


	int i=1;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from user where email='"+email+"' ");
	while(rs.next())
	{
		String userName=rs.getString(2);
		java.util.Date date = new java.util.Date();
		PreparedStatement ps= con.prepareStatement("insert into transaction(id,transactionAmount,userName,transactionDate,active) values(?,?,?,?,?)");
		ps.setInt(1,i++);
		ps.setInt(2,num);
		ps.setString(3,userName);
		ps.setString(4,date.toString());
		ps.setString(5,"Yes");
		ps.executeUpdate();
			
	
		
	


%>   
   
      <table border = "1" cellspacing="1" bordercolor="blue" bgcolor="yellow">
         <tr>
            <th colspan="8">Receipt</th>
         </tr>
         
         <tr>
            <th>User New Balance</th>
            <th><%=rs.getInt(1) %></th>
         </tr>
         <tr>
             <td>User Name</td>
             <td><%=rs.getString(2) %></td>
         </tr>
         <tr>
            <th>Gender</th>
            <th><%=rs.getString(3) %></th>
         </tr>
         <tr>
             <td>City</td>
             <td><%=rs.getString(4) %></td>
         </tr>
         <tr>
            <th>Home Address</th>
            <th><%=rs.getString(5) %></th>
         </tr>
         <tr>
             <td>Postal Code</td>
             <td><%=rs.getString(6) %></td>
         </tr>
         <tr>
            <th>Telephone</th>
            <th><%=rs.getString(7) %></th>
         </tr>
         <tr>
             <td>Email</td>
             <td><%=rs.getString(8) %></td>
         </tr>
 
         <tr>
            <th>Paid Amount</th>
            <th><%=num %></th>
         </tr>
       
         
      </table>
      <a href="home.jsp">Done</a>
<%
	}
	}catch(Exception e)
	{
	System.out.println(e);	
	//response.sendRedirect(".jsp?msg=invalid");
	}

%>      
   </body>
</html>