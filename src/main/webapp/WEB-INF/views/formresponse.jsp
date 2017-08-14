<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/11/2017
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank you!</title>
    <link href="<c:url value="/resources/css/coffeestyle.css"/> "rel="stylesheet" >
</head>
<body>
<h3>Thank you for submitting your info!</h3> <br>
First Name: ${firstname} <br>
Last Name: ${lastname} <br>
Email: ${email} <br>
Company: ${company} <br>
Phone: ${phone} <br>
Birthday: ${birthday} <br>
Coffee Preferences: <br>
${latte} <br>
${frappe} <br>
${irishcoffee} <br>
${americano} <br>
${icedcoffee} <br>
${espresso}<br>
${regularcoffee} <br>
Password: ${password} <br>

</body>
</html>