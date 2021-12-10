<%@ page import="java.util.*"%>
<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 08.12.2021
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ToDo List</title>
</head>
<body>
<!-- Step 1: Create HTML form -->
<form action="todo-demo.jsp">
    Add new item: <input type="text" name="theItem" />

    <input type="submit" value="submit"/>
</form>

<br>
Item entered: <%= request.getParameter("theItem")%>
<!-- Step 2: Add new item to "To Do" List -->
<%
    // get the TO DO items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    // if the TO DO items doesn't exist, then create a new one
    if (items == null) {
        items = new ArrayList<String>();
        session.setAttribute("myToDoList", items);
    }

    // see if there is form data to add
    String theItem = request.getParameter("theItem");
    if (theItem != null ) {
        items.add(theItem);
    }
%>

<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>To Do List Items:</b>
<ol>
    <%
        for (String item : items) {
            out.println("<li>" + item + "</li>");
        }
    %>
</ol>
</body>
</html>
