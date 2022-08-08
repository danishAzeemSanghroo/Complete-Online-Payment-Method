<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>
	<%
		String msg = request.getParameter("msg");
	if ("added".equals(msg)) {
	%>
	<h3 class="alert">User added successfully!</h3>
	<%
		}
	%>
	<%
		if ("exist".equals(msg)) {
	%>
	<h3 class="alert">User already exist</h3>
	<%
		}
	%>
	<%
		if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Something went wrong! Try Again!</h3>
	<%
		}
	%>

	<table>
		<thead>
          <tr>
            <th scope="col"><i class="fa fa-inr"></i>Balance</th>
            <th scope="col">User Name</th>
            <th scope="col">Gender</th>
            <th scope="col">City</th>
            <th scope="col">Home Address</th>
            <th scope="col">Postal Code</th>
            <th scope="col">Telephone</th>
            <th scope="col">Account</th>
            <th scope="col">Password</th>
            <th>Status</th>
           <!--   <th scope="col">Payment<i class='fas fa-pen-fancy'></i></th>-->
          </tr>
		</thead>
		<tbody>
			<%
				try {
				String email1=session.getAttribute("email").toString();  	
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from user");
				while (rs.next()) 
				{
			%>
          <tr>
            <td><i class="fa fa-inr"><%=rs.getString(1)%></i></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            <td>Active</td>
           <%--  <td><a href="payment.jsp?gmail=<%=rs.getString(8) %>">Click here<i class='fas fa-pen-fancy'></i></a></td> --%>
          </tr>
			<%
				}
			} catch (Exception e) {
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