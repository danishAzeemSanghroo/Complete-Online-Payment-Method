<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="userName" placeholder="Enter User Name" required>
    <input type="text" name="gender" placeholder="Enter Gender" required>
    <input type="text" name="city" placeholder="Enter City" required>
    <input type="text" name="homeAddress" placeholder="Enter Home Address" required>
    <input type="text" name="postalCode" placeholder="Enter Postal Code" required>
    <input type="text" name="contactTelephone" placeholder="Enter Contact Telephone" required> 
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="text" name="userAccount" placeholder="Enter User Account" required>
    <input type="password" name="userPassword" placeholder="Enter User Password" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Updated</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>An Online Payment Service</h2>
    <p>Sign up for use of online method of payment. You can send/receive and pay amount from your account. Please do not share account number and password...</p>
    <p>Note:Every user has dummy balance 1000</p>
  </div>
</div>

</body>
</html>