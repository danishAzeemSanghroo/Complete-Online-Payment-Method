<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newPassword=request.getParameter("newPassword");

int check=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("Select * from member where email='"+email+"' and mobileNumber='"+mobilenumber+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'  ");
		while(rs.next())
		{
			check=1;
			st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"' ");
			response.sendRedirect("forgotPassword.jsp?msg=done");
			
		}
		if(check==0)
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
		
		
	
		
	}catch(Exception e)
{
	System.out.println(e);	
	//response.sendRedirect(".jsp?msg=invalid");
}
%>
