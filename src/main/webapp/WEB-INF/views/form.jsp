<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/11/2017
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form</title>
</head>
<body>
<form action="formhandler" method="post">
    First Name: <input type="text" name="firstname"><br>
    Last Name: <input type="text" name="lastname"><br>
    Email: <input type="email" name="email"> <br>
    Company: <input type="text" name="company"> <br>
    Phone: <input type="number" name="phone"> <br>
    Date of Birth: <input type="date" name="birthday"> <br>
    <input type="submit" name="submit" value="Submit">

</form>
</body>
</html>
