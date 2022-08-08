
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
 <form action="paymentAction.jsp" method="post">
 <% 
 	int userBalance=Integer.parseInt(request.getParameter("userBalance"));
/*  	String userName=request.getParameter("userName");
 	String gender=request.getParameter("gender");
 	String city=request.getParameter("city");
 	String homeAddress=request.getParameter("homeAddress");
 	String postalCode=request.getParameter("postalCode");
 	String contactTelephone=request.getParameter("contactTelephone"); */
 	String email=request.getParameter("email");
 	String userAccount=request.getParameter("userAccount");
 	String userPassword=request.getParameter("userPassword"); 
 	int num=Integer.parseInt(request.getParameter("num"));
 	
 %>
 	Email: <b></b><label><%=email %></label><br></b>
 	Balance: <b></b><label><%=userBalance %></label></b><br>
 	

        <input type="hidden" name="userBalance" value="<%=userBalance %>"> 
<%--     	<input type="hidden" name="userName" value="<%=userName %>"> 
    	<input type="hidden" name="gender" value="<%=gender %>"> 
    	<input type="hidden" name="city" value="<%=city %>"> 
    	<input type="hidden" name="homeAddress" value="<%=homeAddress %>"> 
    	<input type="hidden" name="postalCode" value="<%=postalCode %>"> 
    	<input type="hidden" name="contactTelephone" value="<%=contactTelephone %>">  --%>
    	<input type="hidden" name="email" value="<%=email %>"> 
    	<input type="hidden" name="userAccount" value="<%=userAccount %>"> 
    	<input type="hidden" name="userPassword" value="<%=userPassword %>">
    	<input type="hidden" name="num" value="<%=num %>">
    
    
    <input type="text" name="accountNumber" placeholder="Enter Account Number" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="Pay">
    </form>     
      
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
</div>

</body>
</html>