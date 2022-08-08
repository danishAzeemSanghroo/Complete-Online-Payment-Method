<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	int balance=1000;
String userName=request.getParameter("userName");
String gender=request.getParameter("gender");
String city=request.getParameter("city");
String homeAddress=request.getParameter("homeAddress");
String postalCode=request.getParameter("postalCode");
String contactTelephone=request.getParameter("contactTelephone");
String email=request.getParameter("email");
String userAccount=request.getParameter("userAccount");
String userPassword=request.getParameter("userPassword");

	try{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");
		pst.setInt(1,balance);
		pst.setString(2,userName);
		pst.setString(3,gender);
		pst.setString(4,city);
		pst.setString(5,homeAddress);
		pst.setString(6,postalCode);
		pst.setString(7,contactTelephone);
		pst.setString(8,email);
		pst.setString(9,userAccount);
		pst.setString(10,userPassword);
		pst.executeUpdate();
		response.sendRedirect("signup.jsp?msg=valid");
		
		
	
		
	}catch(Exception e)
{
	System.out.println(e);	
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>
