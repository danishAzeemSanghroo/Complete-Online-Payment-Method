<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col"><i class="fa fa-inr"></i>Transaction</th>
            <th scope="col">User Name</th>
            <th scope="col">Transaction Date</th>
             <th scope="col">Status</th>
            
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from transaction ");
		while(rs.next())
		{
			sno=sno+1;
			%>

          <tr>
            <td><%out.println(sno); %></td>
            <td><i class="fa fa-inr"></i><%=rs.getInt(2) %> </td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            </tr>
<% 		}
}catch(Exception e)
{
System.out.println(e);	
}
%>         
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>