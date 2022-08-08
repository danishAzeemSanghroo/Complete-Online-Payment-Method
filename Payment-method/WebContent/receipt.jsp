
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>





<%
	int userBalance=Integer.parseInt(request.getParameter("userBalance"));
	String userName=request.getParameter("userName");
	String gender=request.getParameter("gender");
	String city=request.getParameter("city");
	String homeAddress=request.getParameter("homeAddress");
	String postalCode=request.getParameter("postalCode");
	String contactTelephone=request.getParameter("contactTelephone");
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
				//session.setAttribute("num", num);
				//session.setAttribute("email", email);
				//response.sendRedirect("receipt.jsp ");
				
			}
			else
			{
				out.println("Something went wrong try again");
			}

	
}catch(Exception e)
{
System.out.println(e);	

}	
%>
<!DOCTYPE html>
<html>

   <head>
      <title>TIME TABLE</title>
   </head>
	
   <body>
      <table border = "1" cellspacing="1" bordercolor="blue" bgcolor="yellow">
         <tr>
            <th colspan="8">Receipt</th>
         </tr>
         
         <tr>
            <th>Email</th>
            <th><%=email %></th>
         </tr>
         <tr>
             <td></td>
             <td>Accounts</td>
             <td>English</td>
             <td>Statistics</td>
             <td>Banking</td>
             <td align="center">-</td>
             <td align="center">EP</td>
         </tr>
         <tr>
             <td>TUESDAY</td>
             <td>Statistics</td>
             <td>Banking</td>
             <td>English</td>
             <td>Accounts</td>
             <td align="center">-</td>
             <td align="center">-</td>
         </tr>
         <tr>
             <td>WEDNESDAY</td>
             <td>English</td>
             <td>Statistics</td>
             <td>Accounts</td>
             <td align="center">EP</td>
             <td>Banking</td>
             <td align="center">-</td>
         </tr>
         <tr>
             <td>THURSDAY</td>
             <td align="center">-</td>
             <td align="center">CA</td>
             <td>Statistics</td>
             <td>English</td>
             <td align="center">EP</td>
             <td align="center">-</td>
         </tr>
         <tr>
             <td>FRIDAY</td>
             <td>Banking</td>
             <td>Statistics</td>
             <td>English</td>
             <td colspan="2" align="center">ICT</td>
             <td align="center">CA</td>
         </tr>
         <tr>
             <td>SATURSDAY</td>
             <td>Banking</td>
             <td align="center">CA</td>
             <td>Statistics</td>
             <td colspan="2" align="center">English</td>
             <td>Accounts</td>
         </tr>
         
      </table>
      
   </body>
</html>