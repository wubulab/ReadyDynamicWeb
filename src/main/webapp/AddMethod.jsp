<%@ page import="ua.readydynamicweb.DatabaseFacade" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Inserted successfully</title>
</head>
<body>

<%
    String index = request.getParameter("index");
    String book = request.getParameter("book");

    DatabaseFacade.addBook(Integer.parseInt(index), book);
%>

<p>Inserted successfully</p>

<a href="http://localhost:8080/ReadyDynamicWeb_war/BookManager.jsp">Go to Book Manager</a>


</body>
</html>