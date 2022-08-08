
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
 <form action="loginAction.jsp" method="post">
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="submit" value="Login">
    </form>     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
<%
String msg=request.getParameter("msg");
if("notexits".equals(msg))
{
%> 


  <h1>Incorrect Username or Password</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>An Online Payment Service</h2>
    <p>This assignment is about the design and implementation of a web-based, multi-user payment service using 
Java Enterprise Edition (Java EE) technologies. The system is a much-simplified version of PayPal..</p>
  </div>
</div>

</body>
</html>