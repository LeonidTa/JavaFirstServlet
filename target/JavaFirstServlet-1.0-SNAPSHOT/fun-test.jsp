<%@page import="com.example.javafirstservlet.*"%>
<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 08.12.2021
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fun-test</title>
</head>
<body>
Let's have some fun: <%= FunUtils.makeItLower("FUN FUN FUN!!!!!!!!")%>
</body>
</html>
