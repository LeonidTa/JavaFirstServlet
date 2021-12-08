<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 08.12.2021
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Built in Objects test</title>
</head>
<body>
<h3>JSP Built-In Objects</h3>

Request user agent: <%= request.getHeader("User-Agent")%>

<br/><br/>

Request language: <%= request.getLocale()%>


</body>
</html>
