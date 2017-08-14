<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/11/2017
  Time: 1:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form</title>
    <link href="<c:url value="/resources/css/coffeestyle.css"/> "rel="stylesheet" >

    <script language="JavaScript">
        function verifyEmail() {
            var verEmail = document.forms.register.email.value;
            var verPhone = document.forms.register.phone.value;
            if (verEmail !== null) {
                alert("Valid Email");
            } else {

            }
            if(verPhone.length !== 10) {
                alert("Invalid Phone Number");
            }
            else {

            }

        }

    </script>
</head>
<body>
<form name="register" action="formhandler" method="post">
    First Name: <input type="text" name="firstname" required><br><br>
    Last Name: <input type="text" name="lastname" required><br><br>
    Email: <input type="email" name="email" required> <br><br>
    Company: <input type="text" name="company"> <br><br>
    Phone: <input type="number" name="phone"> <br><br>
    Date of Birth: <input type="date" name="birthday"> <br><br>
    Coffee Preferences:<br> <input type="checkbox" name="latte" value="Latte">Latte<br>
    <input type="checkbox" name="frappe" value="Frappe">Frappe<br>
    <input type="checkbox" name="irishcoffee" value="Irish Coffee">Irish Coffee<br>
    <input type="checkbox" name="americano" value="Americano">Americano<br>
    <input type="checkbox" name="icedcoffee" value="Iced Coffee">Iced Coffee<br>
    <input type="checkbox" name="espresso" value="Espresso">Espresso<br>
    <input type="checkbox" name="regularcoffee" value="Regular Coffee">Regular Coffee<br><br>
    Password: <input type="text" name="password" required><br>
    Confirm Password: <input type="text" name="conpassword" required><br>
    <input type="submit" name="submit" value="Submit" onclick="verifyEmail()">
</form>
</body>
</html>