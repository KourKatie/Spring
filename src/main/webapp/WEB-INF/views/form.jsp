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
    <link href="/resources/css/coffeestyle.css/" rel="stylesheet">

    <script language="JavaScript">
        function verify() {
            var verEmail = document.forms.register.email.value;
            var verPhone = document.forms.register.phone.value;
            if(verPhone.length !== 10) {
                alert("Invalid Phone Number");
            }
            else {

            }

        }

    </script>
</head>
<body>
<form name="register" action="addUser" method="post">
    *First Name:  <input type="text" name="firstname" required><br><br>
    *Last Name: ; <input type="text" name="lastname" required><br><br>
    *Email:  <input type="email" name="email" required> <br><br>
    Company:  <input type="text" name="company"> <br><br>
    Phone:  <input type="number" name="phone"> <br><br>
    Date of Birth:  <input type="date" name="birthday"> <br><br>
    *Password:  <input type="password" name="password" required><br>
    *Confirm Password: <input type="password" name="conpassword" required><br>
    <input type="submit" name="submit" value="Submit" onclick="verify()">
</form>
</body>
</html>