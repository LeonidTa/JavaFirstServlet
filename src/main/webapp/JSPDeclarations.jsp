<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: home
  Date: 08.12.2021
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declarations in JSP</title>
</head>
<body>
    <!-- You can make reusable methods -->
    <%!
        String makeItLower(String data) {
            return data.toLowerCase();
        }
    %>

    <!-- Here you access the method .makeItLower-->
    Lower case "Hello World": <%= makeItLower("Hello World")%>
</body>
</html>
