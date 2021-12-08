<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 08.12.2021
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Conformation</title>
</head>
<body>

    The student is confirmed: ${param.firstname} ${param.lastname}
    <br/><br/>
    The student's country is: ${param.country}
    <br/><br/>
    The students favorite Programming Language is: ${param.favoriteLanguage}
    <br/><br/>
    Favorite languages:
    <!-- Display a list of favoriteRealLanguages -->
    <ul>
        <%
            String langs []  = request.getParameterValues("favoriteRealLanguage");

            for (String lang : langs) {
                out.println("<li>" + lang + "</li>");
            }
        %>
    </ul>

</body>
</html>
