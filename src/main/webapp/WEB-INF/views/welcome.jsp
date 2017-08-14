<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
    <link href="<c:url value="/resources/css/coffeestyle.css"/> "rel="stylesheet" >
</head>
<body>
Welcome to Java CoffeeHouse!
<a href="userform">Register</a>
    <c:forEach items = "${cList}" var="item">
        <p></p>
                  Name:  ${item.name}<br>
                  Description:  ${item.description}<br>
                  Quantity:  ${item.quantity}<br>
                  Price:  ${item.price}<br>
        <p></p>

    </c:forEach>
</body>
</html>