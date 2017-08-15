<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/resources/css/coffeestyle.css" rel="stylesheet" >
    <title>Welcome!</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Satisfy');
    </style>
<style>
    .col {
        -webkit-column-count: 2;
        -webkit-column-gap: 2em;
    }
</style>
</head>
<body>
<h1>Welcome to Java CoffeeHouse!</h1>
<div class="align"><a href="userform">Register</a></div>
<p></p>
<div class="col">
<img class="pic" src="/resources/images/girlcoffee.jpg" alt="Girl Drinking Coffee">
    <c:forEach items = "${cList}" var="item">
        <p></p>
                  Name: ${item.name}<br>
                  Description: ${item.description}<br>
                  Quantity: ${item.quantity} servings<br>
                  Price: $${item.price}<br>
        <p></p>

    </c:forEach>
</div>
</body>
</html>