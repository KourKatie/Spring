<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="/resources/css/coffeestyle.css" rel="stylesheet" >
    <title>Welcome!</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Satisfy');
    </style>
<%--<style>--%>
    <%--.col {--%>
        <%---webkit-column-count: 2;--%>
        <%---webkit-column-gap: 2em;--%>
        <%--font-size: 15px;--%>
    <%--}--%>
<%--</style>--%>
</head>
<body>
<h1>Welcome to Java CoffeeHouse!</h1>
<div class="est">Established 2017</div><br>
<hr width="100%" size="9px" color="black">
<%--<div class="col">--%>
<table style = "width: 100%" >
    <td width="80%"><img class="pic" src="/resources/images/coffeeshop.jpg" alt="Girl Drinking Coffee"></td>
    <p></p>
    <td width="20%"><c:forEach items = "${cList}" var="item">
        <p></p>
        <div class="name">${item.name}</div>
                  ${item.description}<br>
                  ${item.quantity} servings<br>
                  $${item.price}<br>
        <p></p>

    </c:forEach></td>
</table>
<%--</div>--%>
    <hr width="100%" size="9px" color="black">
<div class="align"><a href="userform">Register</a></div>
</body>
</html>