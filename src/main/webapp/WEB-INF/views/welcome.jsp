<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/resources/css/coffeestyle.css" rel="stylesheet" >
    <title>Welcome!</title>
<style>
    .col {
        -webkit-column-count: 2;
        -webkit-column-gap: 2em;
    }
</style>
</head>
<body class="col">
<img class="pic" src="/resources/images/girlcoffee.jpg" alt="Girl Drinking Coffee">
<h2>Welcome to Java CoffeeHouse!</h2>
<a href="userform">Register</a>
    <c:forEach items = "${cList}" var="item">
        <p></p>
                  Name: ${item.name}<br>
                  Description: ${item.description}<br>
                  Quantity: ${item.quantity} servings<br>
                  Price: $${item.price}<br>
        <p></p>

    </c:forEach>
</body>
</html>