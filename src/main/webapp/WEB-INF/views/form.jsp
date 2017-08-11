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
    Coffee Preferences:<br> <input type="checkbox" name="latte" value="Latte">Latte<br>
    <input type="checkbox" name="frappe" value="Frappe">Frappe<br>
    <input type="checkbox" name="irishcoffee" value="Irish Coffee">Irish Coffee<br>
    <input type="checkbox" name="americano" value="Americano">Americano<br>
    <input type="checkbox" name="icedcoffee" value="Iced Coffee">Iced Coffee<br>
    <input type="checkbox" name="espresso" value="Espresso">Espresso<br>
    <input type="checkbox" name="regularcoffee" value="Regular Coffee">Regular Coffee<br>
    <input type="submit" name="submit" value="Submit">
</form>
</body>
</html>
